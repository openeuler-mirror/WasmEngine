use anyhow::{anyhow, Result};
use std::collections::HashMap;
use tracing::info;
use wasi_common::pipe::WritePipe;
use wasmtime::*;
use wasmtime_wasi::{ambient_authority, tokio::WasiCtxBuilder, Dir, WasiCtx};

use super::{config::EnvConfig, environment::UNIT_OF_COMPUTE_IN_INSTRUCTIONS};

const WASM_PAGE_SIZE: u32 = 0x10000;

#[derive(Clone)]
pub struct WasmtimeRuntime {
    pub(crate) engine: Engine,
    pub(crate) linker: Linker<WasiCtx>,
    pub(crate) config: EnvConfig,
}

impl WasmtimeRuntime {
    pub fn new(config: &EnvConfig) -> anyhow::Result<Self> {
        let mut wasmtime_config = Config::new();
        wasmtime_config
            .async_support(true)
            .debug_info(false)
            // The behaviour of fuel running out is defined on the Store
            .consume_fuel(true)
            .wasm_reference_types(true)
            .wasm_bulk_memory(true)
            .wasm_multi_value(true)
            .wasm_multi_memory(true)
            // Disable profiler
            .profiler(ProfilingStrategy::None)
            .cranelift_opt_level(OptLevel::SpeedAndSize)
            // Allocate resources on demand because we can't predict how many instances will exist
            .allocation_strategy(InstanceAllocationStrategy::OnDemand)
            // Memories are always static (can't be bigger than max_memory)
            .static_memory_maximum_size(config.max_memory() as u64)
            // Set memory guards to 4 Mb
            .static_memory_guard_size(0x400000)
            .dynamic_memory_guard_size(0x400000);
        let engine = Engine::new(&wasmtime_config)?;
        let mut linker = Linker::new(&engine);
        // Allow plugins to shadow host functions
        linker.allow_shadowing(true);

        wasmtime_wasi::tokio::add_to_linker(&mut linker, |ctx| ctx)?;

        Ok(Self {
            engine,
            linker,
            config: config.to_owned(),
        })
    }

    pub async fn spawn_wasi(
        &self,
        module: Module,
        data: HashMap<String, String>,
    ) -> Result<String> {
        let mut wasi = WasiCtxBuilder::new().inherit_stdio();
        if let Some(envs) = self.config.wasi_envs() {
            wasi = wasi.envs(envs)?;
        }
        let stdout = WritePipe::new_in_memory();
        wasi = wasi.stdout(Box::new(stdout.clone()));
        let serialized = serde_json::to_string(&data)?;
        wasi = wasi.args(&[serialized])?;
        for preopen_dir_path in self.config.preopened_dirs() {
            let preopen_dir = Dir::open_ambient_dir(preopen_dir_path, ambient_authority())?;
            wasi = wasi.preopened_dir(preopen_dir, preopen_dir_path)?;
        }
        let wasi = wasi.build();

        let mut store = Store::new(&self.engine, wasi);
        // Trap if out of fuel
        store.out_of_fuel_trap();
        // Define maximum fuel
        match self.config.max_fuel() {
            Some(max_fuel) => {
                store.out_of_fuel_async_yield(max_fuel, UNIT_OF_COMPUTE_IN_INSTRUCTIONS)
            }
            // If no limit is specified use maximum
            None => store.out_of_fuel_async_yield(u64::MAX, UNIT_OF_COMPUTE_IN_INSTRUCTIONS),
        };

        let instance = self.linker.instantiate_async(&mut store, &module).await?;
        instance
            .get_typed_func::<(), (), _>(&mut store, "_start")?
            .call_async(&mut store, ())
            .await?;

        drop(store);

        let contents = stdout
            .try_into_inner()
            .map_err(|_| anyhow::format_err!("failed to get stdout content"))?;
        let contents: Vec<u8> = contents.into_inner();
        let result = std::str::from_utf8(&contents)?;
        let result = result.strip_suffix("\n").unwrap_or(result);

        Ok(result.to_string())
    }

    pub async fn spawn(
        &self,
        module: Module,
        function: &str,
        args: HashMap<String, String>,
    ) -> Result<String> {
        let serialized = serde_json::to_string(&args)?;
        let mut store = Store::new(&self.engine, ());
        // Trap if out of fuel
        store.out_of_fuel_trap();
        // Define maximum fuel
        match self.config.max_fuel() {
            Some(max_fuel) => {
                store.out_of_fuel_async_yield(max_fuel, UNIT_OF_COMPUTE_IN_INSTRUCTIONS)
            }
            // If no limit is specified use maximum
            None => store.out_of_fuel_async_yield(u64::MAX, UNIT_OF_COMPUTE_IN_INSTRUCTIONS),
        };

        let instance = Instance::new_async(&mut store, &module, &[]).await?;
        //let wasm_function = instance.get_func(&mut store, function).unwrap();
        let wasm_function =
            instance.get_typed_func::<(i32, i32), (i32, i32), _>(&mut store, function)?;

        if serialized.len() > WASM_PAGE_SIZE as usize {
            return Err(anyhow!("input args size larger than {}", WASM_PAGE_SIZE));
        }
        info!("serialized.len() is {}", serialized.len() as usize);
        let memory = instance
            .get_memory(&mut store, "memory")
            .ok_or(anyhow::format_err!("failed to find `memory` export"))?;
        let heap_base_global = instance
            .get_global(&mut store, "__heap_base")
            .ok_or(anyhow::format_err!("failed to find `__heap_base` export"))?;
        let heap_base = heap_base_global
            .get(&mut store)
            .i32()
            .ok_or(anyhow::format_err!("failed to find `__heap_base` export"))?;
        info!("heap_base is {}", heap_base as usize);

        memory.grow(&mut store, 1)?;
        memory.write(&mut store, heap_base as usize, serialized.as_bytes())?;

        let (pointer, length) = wasm_function
            .call_async(&mut store, (heap_base, serialized.len() as i32))
            .await?;

        let mut total_buffer: [u8; WASM_PAGE_SIZE as usize] = [0; WASM_PAGE_SIZE as usize];
        let buffer = &mut total_buffer[0..length as usize];
        memory.read(&store, pointer as usize, buffer)?;
        let s = std::str::from_utf8(&buffer)?;

        Ok(String::from(s))
    }

    pub fn get_engine(&self) -> &Engine {
        &self.engine
    }

    pub fn get_liker(&self) -> &Linker<WasiCtx> {
        &self.linker
    }

    pub fn get_config(&self) -> &EnvConfig {
        &self.config
    }
}
