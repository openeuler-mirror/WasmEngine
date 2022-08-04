use wasm_engine::{
    function_store::{
        local_store::{FunctionEntries, FunctionStore},
        module_store::ModuleStore,
    },
    wrapper::{config::EnvConfig, environment::Environment},
};
use wasmtime::Module;

#[test]
fn module_store() -> anyhow::Result<()> {
    let wasm_runtime = Environment::new(EnvConfig::default()).unwrap();
    let runtime = wasm_runtime.runtime();
    let module = &Module::from_file(runtime.get_engine(), "./tests/authentication.wasm")?;
    let module_wasi = &Module::from_file(runtime.get_engine(), "./tests/authentication-wasi.wasm")?;
    let store = ModuleStore::new();

    store.insert("authentication", module.clone(), false)?;
    store.insert("authentication-wasi", module_wasi.clone(), true)?;

    assert!(store.exist("authentication"));
    assert!(store.exist("authentication-wasi"));

    store.remove("authentication-wasi")?;
    assert!(!store.exist("authentication-wasi"));

    let result = store.get("authentication");
    assert!(result.is_ok());
    let authentication_module = result.unwrap();
    assert_eq!(authentication_module.name(), "authentication");
    assert_eq!(authentication_module.capability(), false);

    Ok(())
}

#[tokio::test]
async fn local_store() -> anyhow::Result<()> {
    struct FunctionInfo {
        function_name: String,
        function_image: String,
        wasi_cap: bool,
    }
    let store: FunctionStore = FunctionStore::new("/var/lib/wasmengine-test/functions/");
    let authentication = FunctionInfo {
        function_name: "authentication".to_string(),
        function_image: "hub.oepkgs.net/library/authentication-wasm:latest".to_string(),
        wasi_cap: false,
    };
    let authentication_wasi = FunctionInfo {
        function_name: "authentication-wasi".to_string(),
        function_image: "hub.oepkgs.net/library/authentication-wasi:latest".to_string(),
        wasi_cap: true,
    };

    let add_authentication = store
        .add(
            &authentication.function_name,
            &authentication.function_image,
            authentication.wasi_cap,
        )
        .await;
    assert!(add_authentication.is_ok());
    assert!(store.save().await.is_ok());

    let add_authentication_wasi = store
        .add(
            &authentication_wasi.function_name,
            &authentication_wasi.function_image,
            authentication_wasi.wasi_cap,
        )
        .await;
    assert!(add_authentication_wasi.is_ok());
    assert!(store.save().await.is_ok());

    drop(store);
    let store: FunctionStore = FunctionStore::new("/var/lib/wasmengine-test/functions/");
    let entries = store.list().await;
    assert!(entries.is_ok());
    assert_eq!(entries.unwrap().len(), 0);

    assert!(store.restore().await.is_ok());

    let entries = store.list().await;
    assert!(entries.is_ok());
    assert_eq!(entries.unwrap().len(), 2);

    let entries = store.list().await;
    assert!(FunctionEntries(entries.unwrap())
        .to_string()
        .contains("authentication"));

    assert!(store.query("authentication").await.is_ok());
    assert!(!store.query("authentication-none").await.is_ok());

    assert!(store.exist("authentication").await);
    assert!(!store.exist("authentication-none").await);

    store.delete("authentication-wasi").await?;
    assert!(!store.exist("authentication-wasi").await);

    Ok(())
}
