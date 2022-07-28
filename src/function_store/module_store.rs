/*!
Registries allow you to define "well-known" modules in the &environment that can be looked up by
name and version.
*/

use anyhow::{anyhow, Result};
use std::{collections::HashMap, sync::Arc, sync::RwLock};
use tracing::info;
use wasmtime::Module;

/// A memory store for storing `Wasm Modules`.
///
/// Modules are registered by `name`
#[derive(Clone, Default)]
pub struct ModuleStore {
    module_store: Arc<RwLock<HashMap<String, ModuleEntry>>>,
}

impl ModuleStore {
    /// Create new ModuleStore
    pub fn new() -> Self {
        ModuleStore {
            module_store: Arc::new(RwLock::new(HashMap::new())),
        }
    }

    /// Insert module into the registry under a specific name, version and wasi capabilites.
    ///
    /// The version needs to be a correct semver string (e.g "1.2.3-alpha3") or the insertion will
    /// fail. If the exact same version and name exists it will be overwritten.
    pub fn insert(&self, name: &str, module: Module, wasi_cap: bool) -> Result<()> {
        let mut writer = self.module_store.write().unwrap();

        if writer.contains_key(name) {
            info!("wasm module already exist in the map");
            return Ok(());
        }

        writer.insert(
            name.to_string(),
            ModuleEntry::new(name.to_string(), module, wasi_cap),
        );

        Ok(())
    }

    /// Remove module under name & version from registry
    ///
    /// Exact version matching is used for lookup.
    pub fn remove(&self, name: &str) -> Result<()> {
        let mut writer = self.module_store.write().unwrap();

        if !writer.contains_key(name) {
            return Err(anyhow!(
                "remove wasm module {} doesn't exist in the module store",
                name
            ));
        }

        writer.remove(name).unwrap();

        Ok(())
    }

    /// Returns module with specified name
    pub fn get(&self, name: &str) -> Result<ModuleEntry> {
        let reader = self.module_store.read().unwrap();

        if !reader.contains_key(name) {
            return Err(anyhow::format_err!("failed to find module in module store"));
        }

        let v = reader.get(name).unwrap();

        Ok(v.clone())
    }

    pub fn exist(&self, name: &str) -> bool {
        let reader = self.module_store.read().unwrap();

        if reader.contains_key(name) {
            return true;
        }

        return false;
    }
}

#[derive(Clone)]
pub struct ModuleEntry {
    name: String,
    module: Module,
    wasi_cap: bool,
}

impl ModuleEntry {
    fn new(name: String, module: Module, wasi_cap: bool) -> Self {
        Self {
            name,
            module,
            wasi_cap,
        }
    }

    pub fn module(&self) -> Module {
        self.module.clone()
    }

    pub fn name(&self) -> &str {
        &self.name
    }

    pub fn capability(&self) -> bool {
        self.wasi_cap
    }

    fn all(&self) -> ModuleEntry {
        self.clone()
    }
}
