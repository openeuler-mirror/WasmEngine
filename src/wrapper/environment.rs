use anyhow::Result;

use crate::function_store::module_store::ModuleStore;

use super::{config::EnvConfig, wasmtime_runtime::WasmtimeRuntime};

// One unit of fuel represents around 100k instructions.
pub const UNIT_OF_COMPUTE_IN_INSTRUCTIONS: u64 = 100_000;

/// The environment represents a set of characteristics that instances spawned from it will have.
///
/// Environments let us set limits on instances:
/// * Memory limits
/// * Compute limits
/// * Access to host functions
///
/// They also define the set of plugins. Plugins can be used to modify loaded Wasm modules.
/// Plugins are WIP and not well documented.
#[derive(Clone)]
pub struct Environment {
    runtime: WasmtimeRuntime,
    store: ModuleStore,
}

impl Environment {
    /// Create a new environment from a configuration.
    pub fn new(config: EnvConfig) -> Result<Self> {
        let wasmtime_runtime = WasmtimeRuntime::new(&config)?;
        Ok(Self {
            runtime: wasmtime_runtime,
            store: ModuleStore::new(),
        })
    }

    pub fn runtime(&self) -> &WasmtimeRuntime {
        &self.runtime
    }

    pub fn registry(&self) -> &ModuleStore {
        &self.store
    }
}
