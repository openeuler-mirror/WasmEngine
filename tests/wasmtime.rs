use std::collections::HashMap;

use wasm_engine::wrapper::{config::EnvConfig, environment::Environment};
use wasmtime::Module;

#[tokio::test(flavor = "multi_thread")]
async fn authentication() -> anyhow::Result<()> {
    let wasm_runtime = Environment::new(EnvConfig::default()).unwrap();
    let runtime = wasm_runtime.runtime();
    let module = &Module::from_file(runtime.get_engine(), "./tests/authentication.wasm")?;
    let module_wasi = &Module::from_file(runtime.get_engine(), "./tests/authentication-wasi.wasm")?;

    // init common arg_uri and arg_body args
    let args = &mut HashMap::new();
    args.insert("arg_uri".to_string(), "uri".to_string());
    args.insert("arg_body".to_string(), "body".to_string());

    struct Testcase {
        name: String,
        secret: String,
        contains: String,
        wasi: bool,
    }

    let testcases = [
        Testcase {
            name: "spawn with right secret".to_string(),
            secret: "32af198911cb4a9727dca0aaf9149020".to_string(),
            contains: "Auth Pass".to_string(),
            wasi: false,
        },
        Testcase {
            name: "spawn with wrong secret".to_string(),
            secret: "32af198911cb4a9727dca0aaf9149020-forbid".to_string(),
            contains: "Auth Forbidden!".to_string(),
            wasi: false,
        },
        Testcase {
            name: "spawn wasi with right secret".to_string(),
            secret: "32af198911cb4a9727dca0aaf9149020".to_string(),
            contains: "Auth Pass".to_string(),
            wasi: true,
        },
        Testcase {
            name: "spawn wasi with wrong secret".to_string(),
            secret: "32af198911cb4a9727dca0aaf9149020-forbid".to_string(),
            contains: "Auth Forbidden!".to_string(),
            wasi: true,
        },
    ];

    for t in testcases {
        println!("start debuging: {}", t.name);
        let mut t_args = args.clone();
        t_args.insert("arg_secret".to_string(), t.secret);

        let result: String;
        if !t.wasi {
            result = runtime
                .spawn(module.clone(), "authentication", t_args)
                .await?;
        } else {
            result = runtime.spawn_wasi(module_wasi.clone(), t_args).await?;
        }
        assert!(
            result.contains(t.contains.as_str()),
            "expect {}, get {}",
            t.contains.as_str(),
            result
        );
    }

    Ok(())
}
