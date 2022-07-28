use super::pull;
use anyhow::{anyhow, Ok, Result};
use oci_distribution::{secrets::RegistryAuth, Client, Reference};
use serde::{Deserialize, Serialize};
use std::collections::HashMap;
use std::fmt::{self, Display};
use std::fs::read_dir;
use std::path::Path;
use std::sync::Arc;
use tokio::fs::OpenOptions;
use tokio::io::AsyncWriteExt;
use tokio::sync::RwLock;
use tracing::{self, debug, info};

#[derive(Clone, Default, Debug, Serialize, Deserialize)]
pub struct FunctionEntry {
    pub func_name: String,
    pub func_image_name: String,
    pub func_local_path: String,
    pub wasi_cap: bool,
}

impl FunctionEntry {
    fn new(name: &str, image_name: &str, path: &str, cap: bool) -> Self {
        FunctionEntry {
            func_name: name.to_string(),
            func_image_name: image_name.to_string(),
            func_local_path: path.to_string(),
            wasi_cap: cap,
        }
    }
}

pub struct FunctionEntries(pub Vec<FunctionEntry>);

impl Display for FunctionEntries {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        write!(f, "[")?;
        for entry in self.0.iter() {
            write!(f, "{{")?;
            write!(
                f,
                "func_name: {}, func_image_name: {}, wasi_cap: {}",
                entry.func_name, entry.func_image_name, entry.wasi_cap
            )?;
            write!(f, "}}, ")?;
        }
        write!(f, "]")
    }
}

#[derive(Clone, Default)]
pub struct FunctionStore {
    function_list: Arc<RwLock<HashMap<String, FunctionEntry>>>,
    function_store_path: String,
    function_persist_path: String,
}

impl FunctionStore {
    /// Create new FunctionStore
    pub fn new(path: &str) -> Self {
        let persist_path = Path::new(path)
            .join("persist.json")
            .into_os_string()
            .into_string()
            .unwrap();

        FunctionStore {
            function_list: Arc::new(RwLock::new(HashMap::new())),
            function_store_path: path.to_string(),
            function_persist_path: persist_path,
        }
    }

    pub async fn exist(&self, func_name: &str) -> bool {
        let func_list = self.function_list.read().await;

        if func_list.contains_key(func_name) {
            return true;
        }

        return false;
    }

    /// Add module into the function store under a specific function name, and wasi capabilites.
    pub async fn add(&self, function_name: &str, image_name: &str, wasi_cap: bool) -> Result<()> {
        let mut writer = self.function_list.write().await;

        let func_store_dir = Path::new(&self.function_store_path)
            .join(function_name)
            .into_os_string()
            .into_string()
            .unwrap();

        if writer.contains_key(function_name) {
            tracing::error!("function image already exist");
            return Err(anyhow!(
                "function {} already exist in the local function store",
                function_name
            ));
        }

        let mut client = Client::new(pull::build_client_config(true));
        let reference: Reference = image_name.parse().expect("Not a valid image reference");

        // pull the wasm image into the local func_store_path
        pull::pull_wasm(
            &mut client,
            &RegistryAuth::Anonymous,
            &reference,
            func_store_dir.as_str(),
        )
        .await;

        // only one wasm module file should be in the func_store_dir
        if read_dir(func_store_dir.clone()).unwrap().count() != 1 {
            return Err(anyhow!(
                "only one wasm module file under the {} function stor dir",
                func_store_dir.as_str()
            ));
        }

        let store_path = read_dir(func_store_dir.clone()).unwrap().next().unwrap()?;
        let func_wasm_file_path = store_path
            .path()
            .canonicalize()?
            .into_os_string()
            .into_string()
            .unwrap();

        writer.insert(
            function_name.to_string(),
            FunctionEntry::new(
                function_name,
                image_name,
                func_wasm_file_path.as_str(),
                wasi_cap,
            ),
        );

        Ok(())
    }

    pub async fn delete(&self, func_name: &str) -> Result<()> {
        let mut writer = self.function_list.write().await;

        if !writer.contains_key(func_name) {
            return Err(anyhow!(
                "request delete func {} not exist in the local store",
                func_name
            ));
        }

        writer.remove(func_name).unwrap();

        Ok(())
    }

    pub async fn list(&self) -> Result<Vec<FunctionEntry>> {
        let reader = self.function_list.read().await;
        let mut funcs_vec: Vec<FunctionEntry> = Vec::new();

        for v in reader.values() {
            funcs_vec.push(v.clone());
        }

        Ok(funcs_vec)
    }

    pub async fn query(&self, func_name: &str) -> Result<FunctionEntry> {
        let reader = self.function_list.read().await;

        if !reader.contains_key(func_name) {
            return Err(anyhow!(
                "request query func {} not exist in the local store",
                func_name
            ));
        }

        let v = reader.get(func_name).unwrap();

        Ok(v.clone())
    }

    // save the function hashmap info into persist.json
    pub async fn save(&self) -> Result<()> {
        let hashmap = self.function_list.read().await;

        let j = serde_json::to_string(&(*hashmap))?;

        info!("function list hashmap json: {}", j);

        let mut file = OpenOptions::new()
            .write(true)
            .create(true)
            .truncate(true)
            .open(self.function_persist_path.clone())
            .await?;

        file.write_all(j.as_bytes()).await?;

        Ok(())
    }

    // restore the function info map from the local persist.json file
    pub async fn restore(&self) -> Result<()> {
        let persist_file_path = Path::new(self.function_persist_path.as_str());
        if !persist_file_path.exists() {
            info!("no persist json file exist, restore end");
            return Ok(());
        }

        let file = std::fs::OpenOptions::new()
            .read(true)
            .open(self.function_persist_path.clone())?;

        let metadata = file.metadata()?;
        if metadata.len() == 0 {
            info!("persist json file: {} is empty", self.function_persist_path);
            return Ok(());
        }

        let func_info: HashMap<String, FunctionEntry> = serde_json::from_reader(file)?;
        debug!(
            "read functions info from {} file, func info: {:?}",
            self.function_persist_path, func_info
        );

        let mut hashmap = self.function_list.write().await;
        hashmap.clear();
        hashmap.extend(func_info.into_iter());

        debug!("print function_list hashmap info: {:?}", hashmap);

        Ok(())
    }
}
