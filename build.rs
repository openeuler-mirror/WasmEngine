#!/usr/bin/env rust-script
//! Dependencies can be specified in the script file itself as follows:
//!
//! ```cargo
//! [dependencies]
//! anyhow="1.0.44"
//! ```

use anyhow::Result;
use std::{path::Path, process::Command};

fn main() -> Result<()> {
    let git_output = Command::new("git")
        .args(&["rev-parse", "--show-toplevel"])
        .output()?;
    let project_dir = String::from_utf8(git_output.stdout)?.replace("\n", "");

    // app_name: &str, use_wasi: bool
    let apps = vec![
        ("fibonacci", true),
        ("hello", true),
        ("authentication", false),
        ("authentication-wasi", true),
    ];
    println!("cargo:rerun-if-changed=build.rs");
    // Tell Cargo that if the given file changes, to rerun this build script.
    apps.iter().for_each(|app| {
        if app.1 {
            println!(
                "cargo:rerun-if-changed={}",
                format!(
                    "{}/experiments/application/{}/src/main.rs",
                    project_dir, app.0
                )
            );
            return;
        }
        println!(
            "cargo:rerun-if-changed={}",
            format!(
                "{}/experiments/application/{}/src/lib.rs",
                project_dir, app.0
            )
        )
    });

    // Run cargo build
    apps.iter()
        .try_for_each(|app: &(&str, bool)| -> Result<()> {
            println!("Building: {}", app.0);
            //io::stdout().flush().expect("Couldn't flush stdout");
            if app.1 {
                let result = Command::new("cargo")
                    .args(&["build", "--target=wasm32-wasi", "--release"])
                    .current_dir(&Path::new(
                        format!("{}/experiments/application/{}", project_dir, app.0).as_str(),
                    ))
                    .output()?;
                let stdout = String::from_utf8(result.stderr)?.replace("\n", "");
                println!("\x1b[0;32m{}\x1b[0m", stdout);
                return Ok(());
            }
            let result = Command::new("cargo")
                .args(&[
                    "rustc",
                    "--target=wasm32-unknown-unknown",
                    "--release",
                    "--",
                    "-C",
                    "target-feature=+multivalue",
                ])
                .current_dir(&Path::new(
                    format!("{}/experiments/application/{}", project_dir, app.0).as_str(),
                ))
                .output()?;
            let stdout = String::from_utf8(result.stderr)?.replace("\n", "");
            println!("\x1b[0;32m{}\x1b[0m", stdout);
            Ok(())
        })?;
    println!("cargo:warning=finishing build.rs");

    // write project_dir to env var
    println!("cargo:rustc-env=WASM_ENGINE_PROJECT_DIR={}", project_dir);

    Ok(())
}
//add change
