use anyhow::Context;
use clap::Parser;
use serde::Deserialize;
use std::{collections::HashMap, error::Error};
use tracing::{info, instrument, Level};
use tracing_subscriber::{self, EnvFilter};
use wasm_engine::wrapper::{config::EnvConfig, environment::Environment};
use wasmtime::Module;
mod function_store;
use function_store::local_store::FunctionStore;
use function_store::module_store::ModuleStore;

lazy_static::lazy_static! {
    pub static ref WASMTIME_RUNTIME :Environment = Environment::new(EnvConfig::default()).unwrap();
    pub static ref MODULE_STORE :ModuleStore = ModuleStore::new();
    pub static ref FUNCTION_STORE: FunctionStore = FunctionStore::new("/var/lib/wasmengine/functions/");
    pub static ref LOG_LEVEL:HashMap<u8,Level> = HashMap::from([
        (0, tracing::Level::TRACE),
        (1, tracing::Level::DEBUG),
        (2, tracing::Level::INFO),
        (3, tracing::Level::WARN),
        (4, tracing::Level::ERROR),
    ]);
}

#[derive(Parser, Debug)]
#[clap(about, version, author)]
struct Args {
    /// Log level used in wasm-engine, TRACE: 0, DEBUG: 1, INFO: 2(Default), WARN: 3, ERROR: 4
    #[clap(short, long, default_value = "2")]
    log_level: u8,

    /// dir that contains preload apps
    #[clap(short, long)]
    preload_apps: Option<String>,
}

#[instrument]
#[tokio::main]
async fn main() -> Result<(), Box<dyn Error + Send + Sync + 'static>> {
    let args = Args::parse();
    tracing_subscriber::fmt()
        .with_env_filter(EnvFilter::from_default_env())
        .try_init()?;

    // try restore the function from local fucntion store
    FUNCTION_STORE.restore().await?;

    let routes = filters::function_management();

    info!("WasmEngine listening on http://0.0.0.0:10000, waiting for request...");
    warp::serve(routes).run(([0, 0, 0, 0], 10000)).await;

    Ok(())
}

/// Load the wasm module file from local file system into ModuleStore
pub async fn load(name: &str) -> anyhow::Result<()> {
    let func = FUNCTION_STORE
        .query(name)
        .await
        .with_context(|| format!("failed to find the function"))?;

    if MODULE_STORE.exist(name) {
        info!("function module {} alread loaded in the module store", name);
        return Ok(());
    }

    let module = Module::from_file(
        WASMTIME_RUNTIME.runtime().get_engine(),
        func.func_local_path,
    )
    .with_context(|| format!("failed to open module file"))?;

    MODULE_STORE.insert(&func.func_name, module, func.wasi_cap)?;

    Ok(())
}

#[derive(Deserialize, Debug)]
pub struct FunctionInfo {
    function_name: String,
    function_image: Option<String>,
    wasi_cap: Option<bool>,
}

#[derive(Deserialize, Debug)]
pub struct FuncInvokeReq {
    function_name: String,
    args: Option<HashMap<String, String>>,
}

mod filters {
    use crate::handlers;
    use warp::Filter;

    pub fn function_management(
    ) -> impl Filter<Extract = impl warp::Reply, Error = warp::Rejection> + Clone {
        warp::path("function").and(
            function_deploy()
                .or(function_delete())
                .or(function_list())
                .or(function_query())
                .or(function_invoke())
                .recover(handle_not_found),
        )
    }

    pub fn function_deploy(
    ) -> impl Filter<Extract = impl warp::Reply, Error = warp::Rejection> + Clone {
        warp::path("deploy")
            .and(warp::post())
            .and(warp::body::content_length_limit(1024 * 16))
            .and(warp::body::json())
            .and_then(handlers::deploy_function)
    }

    pub fn function_delete(
    ) -> impl Filter<Extract = impl warp::Reply, Error = warp::Rejection> + Clone {
        warp::path("delete")
            .and(warp::post())
            .and(warp::body::content_length_limit(1024 * 16))
            .and(warp::body::json())
            .and_then(handlers::delete_function)
    }

    pub fn function_list(
    ) -> impl Filter<Extract = impl warp::Reply, Error = warp::Rejection> + Clone {
        warp::path("list")
            .and(warp::get())
            .and_then(handlers::list_function)
    }

    pub fn function_query(
    ) -> impl Filter<Extract = impl warp::Reply, Error = warp::Rejection> + Clone {
        warp::path("query")
            .and(warp::post())
            .and(warp::body::content_length_limit(1024 * 16))
            .and(warp::body::json())
            .and_then(handlers::query_function)
    }

    pub fn function_invoke(
    ) -> impl Filter<Extract = impl warp::Reply, Error = warp::Rejection> + Clone {
        warp::path("invoke")
            .and(warp::post())
            .and(warp::body::content_length_limit(1024 * 16))
            .and(warp::body::json())
            .and_then(handlers::invoke_function)
    }

    pub async fn handle_not_found(
        reject: warp::Rejection,
    ) -> Result<impl warp::Reply, warp::Rejection> {
        if reject.is_not_found() {
            Ok(format!("404 Not Found\n"))
        } else {
            Err(reject)
        }
    }
}

mod handlers {
    use super::{FuncInvokeReq, FunctionInfo, FUNCTION_STORE, MODULE_STORE, WASMTIME_RUNTIME};
    use crate::{function_store::local_store::FunctionEntries, load};
    use anyhow::{anyhow, Context};
    use serde::{Deserialize, Serialize};
    use std::{collections::HashMap, fmt::Debug};
    use tracing::{debug, instrument};

    #[derive(Serialize, Deserialize, Debug, Default)]
    pub struct Response {
        pub status: u16,
        pub body: String,
    }

    impl warp::Reply for Response {
        fn into_response(self) -> warp::reply::Response {
            http::Response::new(
                format!("status code: {}, message: {}", self.status, self.body).into(),
            )
        }
    }

    #[derive(Debug)]
    struct CustomReject(anyhow::Error);
    impl warp::reject::Reject for CustomReject {}

    pub(crate) fn custom_reject(error: anyhow::Error) -> warp::Rejection {
        warp::reject::custom(CustomReject(error))
    }

    #[instrument]
    pub async fn deploy_function(func: FunctionInfo) -> Result<impl warp::Reply, warp::Rejection> {
        debug!("deploy function info: {:?}", func);

        let func_exist = FUNCTION_STORE.exist(func.function_name.as_str()).await;

        if func_exist {
            return Err(custom_reject(anyhow!(
                "function already exist in the local function store"
            )));
        }

        // add the function into local function store
        FUNCTION_STORE
            .add(
                func.function_name.as_str(),
                func.function_image.unwrap().as_str(),
                func.wasi_cap.unwrap(),
            )
            .await
            .with_context(|| format!("failed to add function into local store"))
            .map_err(|r| custom_reject(r))?;

        // save function store into persist.json file
        FUNCTION_STORE
            .save()
            .await
            .with_context(|| format!("failed to save function list info"))
            .map_err(|r| custom_reject(r))?;

        Ok(Response {
            status: http::StatusCode::OK.as_u16(),
            body: format!("deploy function {} successfully!\n", func.function_name),
        })
    }

    #[instrument]
    pub async fn delete_function(func: FunctionInfo) -> Result<impl warp::Reply, warp::Rejection> {
        debug!("delete function info: {:?}", func.function_name);

        FUNCTION_STORE
            .delete(func.function_name.as_str())
            .await
            .with_context(|| format!("failed to delete function into local store"))
            .map_err(|r| custom_reject(r))?;

        FUNCTION_STORE
            .save()
            .await
            .with_context(|| format!("failed to save function list info"))
            .map_err(|r| custom_reject(r))?;

        // remove the function cached in the MODULE_STORE
        if MODULE_STORE.exist(&func.function_name) {
            MODULE_STORE
                .remove(&&func.function_name)
                .with_context(|| format!("failed to delete function in the module store"))
                .map_err(|r| custom_reject(r))?;
        }

        debug!("delete function {} successfull!", func.function_name);

        Ok(Response {
            status: http::StatusCode::OK.as_u16(),
            body: format!("delete function {} successfull!\n", func.function_name),
        })
    }

    #[instrument]
    pub async fn list_function() -> Result<impl warp::Reply, warp::Rejection> {
        debug!("list all functions info in the local store");

        let funcs: FunctionEntries = FunctionEntries(FUNCTION_STORE.list().await.unwrap());

        debug!("list all function successfully!");

        Ok(Response {
            status: http::StatusCode::OK.as_u16(),
            body: format!("all deployed function info: {}\n", funcs),
        })
    }

    #[instrument]
    pub async fn query_function(func: FunctionInfo) -> Result<impl warp::Reply, warp::Rejection> {
        debug!("query function info: {:?}", func.function_name);

        let func_entry = FUNCTION_STORE
            .query(func.function_name.as_str())
            .await
            .with_context(|| format!("failed to find the function"))
            .map_err(|r| custom_reject(r))?;

        debug!("query function {} successfully", func.function_name);

        Ok(Response {
            status: http::StatusCode::OK.as_u16(),
            body: format!("queried function info: {:?}\n", func_entry),
        })
    }

    #[instrument]
    pub async fn invoke_function(
        invoke_req: FuncInvokeReq,
    ) -> Result<impl warp::Reply, warp::Rejection> {
        debug!("invoke function info: {:?}", invoke_req.function_name);

        load(&invoke_req.function_name.as_str())
            .await
            .with_context(|| format!("failed to load the function from local store"))
            .map_err(|r| custom_reject(r))?;

        let module = MODULE_STORE
            .get(&invoke_req.function_name)
            .map_err(|r| custom_reject(r))?;

        let args: HashMap<String, String> = match invoke_req.args {
            Some(v) => v,
            None => HashMap::new(),
        };

        let runtime = WASMTIME_RUNTIME.runtime();
        let result;
        if module.capability() {
            result = runtime
                .spawn_wasi(module.module(), args)
                .await
                .map_err(|r| custom_reject(r))?;
        } else {
            result = runtime
                .spawn(module.module(), &invoke_req.function_name, args)
                .await
                .map_err(|r| custom_reject(r))?;
        }

        debug!("run module {} successfully!", invoke_req.function_name);

        Ok(Response {
            status: http::StatusCode::OK.as_u16(),
            body: result,
        })
    }
}
