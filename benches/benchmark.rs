use anyhow::Result;
use criterion::{criterion_group, criterion_main, Criterion};
use serde::{Deserialize, Serialize};
use wasmtime::*;
use wasmtime_wasi::{sync::WasiCtxBuilder, WasiCtx};

fn gcd(engine: Engine, module: Module) -> Result<()> {
    let mut store = Store::new(&engine, ());
    let instance = Instance::new(&mut store, &module, &[])?;

    // Invoke `gcd` export
    let gcd = instance.get_typed_func::<(i32, i32), i32, _>(&mut store, "gcd")?;
    gcd.call(&mut store, (6, 27))?;

    Ok(())
}

fn gcd_wasi(engine: Engine, module: Module, linker: Linker<WasiCtx>) -> Result<()> {
    let wasi = WasiCtxBuilder::new()
        .inherit_stdio()
        .inherit_args()
        .unwrap()
        .build();
    let mut store = Store::new(&engine, wasi);

    let instance = linker.instantiate(&mut store, &module)?;
    let gcd = instance.get_typed_func::<(i32, i32), i32, _>(&mut store, "gcd")?;
    gcd.call(&mut store, (6, 27))?;

    Ok(())
}

#[derive(Deserialize, Serialize)]
struct Data {
    arg_uri: String,
    arg_body: String,
    arg_secret: String,
}
fn authentication(engine: Engine, module: Module) -> Result<()> {
    let mut store = Store::new(&engine, ());
    let instance = Instance::new(&mut store, &module, &[])?;

    let p: Data = Data {
        arg_uri: "uri".to_string(),
        arg_body: "body".to_string(),
        arg_secret: "fff111fff".to_string(),
    };
    let serialized = serde_json::to_string(&p).unwrap();
    run_module(store, instance, "authentication", &serialized)?;

    Ok(())
}

fn authentication_wasi(engine: Engine, module: Module, linker: Linker<WasiCtx>) -> Result<()> {
    let wasi = WasiCtxBuilder::new()
        .inherit_stdio()
        .inherit_args()
        .unwrap()
        .build();
    let mut store = Store::new(&engine, wasi);
    let instance = linker.instantiate(&mut store, &module)?;

    let p: Data = Data {
        arg_uri: "uri".to_string(),
        arg_body: "body".to_string(),
        arg_secret: "fff111fff".to_string(),
    };
    let serialized = serde_json::to_string(&p).unwrap();
    run_module(store, instance, "authentication", &serialized)?;

    Ok(())
}

fn echo_string_b(engine: Engine, module: Module) -> Result<()> {
    let mut store = Store::new(&engine, ());
    let instance = Instance::new(&mut store, &module, &[])?;

    run_module(store, instance, "echo_string", "echo")?;
    Ok(())
}

fn echo_string_b_wasi(engine: Engine, module: Module, linker: Linker<WasiCtx>) -> Result<()> {
    let wasi = WasiCtxBuilder::new()
        .inherit_stdio()
        .inherit_args()
        .unwrap()
        .build();
    let mut store = Store::new(&engine, wasi);

    let instance = linker.instantiate(&mut store, &module)?;
    run_module(store, instance, "echo_string", "echo")?;

    Ok(())
}

fn run_module<T>(
    mut store: Store<T>,
    instance: Instance,
    function_name: &str,
    data: &str,
) -> Result<()> {
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

    memory.grow(&mut store, 1)?;
    memory.write(&mut store, heap_base as usize, data.as_bytes())?;

    // Invoke `function_name` export
    let function =
        instance.get_typed_func::<(i32, i32), (i32, i32), _>(&mut store, function_name)?;
    let (pointer, length) = function.call(&mut store, (heap_base, data.len() as i32))?;

    let mut total_buffer: [u8; 1024] = [0; 1024];
    let buffer = &mut total_buffer[0..length as usize];
    memory.read(&store, pointer as usize, buffer)?;
    let _result = match std::str::from_utf8(&buffer) {
        Ok(v) => v,
        Err(e) => panic!("Invalid UTF-8 sequence: {}", e),
    };

    Ok(())
}

fn criterion_benchmark(c: &mut Criterion) {
    c.bench_function("gcd", |b| {
        let engine = Engine::default();
        let module = Module::from_file(&engine, "benches/gcd.wat").unwrap();
        b.iter(|| gcd(engine.clone(), module.clone()))
    });
    c.bench_function("gcd_wasi", |b| {
        let engine = Engine::default();
        let module = Module::from_file(&engine, "benches/gcd.wat").unwrap();
        let mut linker = Linker::new(&engine);
        wasmtime_wasi::add_to_linker(&mut linker, |s| s).unwrap();

        b.iter(|| gcd_wasi(engine.clone(), module.clone(), linker.clone()))
    });
    c.bench_function("echo_string_b", |b| {
        let engine = Engine::default();
        let module = Module::from_file(&engine, "benches/echo_string.wat").unwrap();
        b.iter(|| echo_string_b(engine.clone(), module.clone()))
    });
    c.bench_function("echo_string_b_wasi", |b| {
        let engine = Engine::default();
        let module = Module::from_file(&engine, "benches/echo_string.wat").unwrap();
        let mut linker = Linker::new(&engine);
        wasmtime_wasi::add_to_linker(&mut linker, |s| s).unwrap();

        b.iter(|| echo_string_b_wasi(engine.clone(), module.clone(), linker.clone()))
    });
    c.bench_function("authentication", |b| {
        let engine = Engine::default();
        let module = Module::from_file(&engine, "benches/authentication.wat").unwrap();
        b.iter(|| authentication(engine.clone(), module.clone()))
    });
    c.bench_function("authentication_wasi", |b| {
        let engine = Engine::default();
        let module = Module::from_file(&engine, "benches/authentication.wat").unwrap();
        let mut linker = Linker::new(&engine);
        wasmtime_wasi::add_to_linker(&mut linker, |s| s).unwrap();

        b.iter(|| authentication_wasi(engine.clone(), module.clone(), linker.clone()))
    });
}

criterion_group!(benches, criterion_benchmark);
criterion_main!(benches);
