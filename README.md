# WasmEngine

### 介绍

WasmEngine is a webassembly function engine, which provides high concurrency and sandbox security.

### 软件架构

* benches
    * bechmark for `gcd`, `echo_string` and `authentication` function in wasi and no wasi enviroment.
* experiments
    * experiments/application: collections of many useful wasm and wasi apps.
    * experiments/application/runapp: app test project.
    * experiments/bash_libraries: concurrency test base bash library.
    * experiments/concurrency: concurrency test for wasm-engine
* src
    * src/wrapper: wasmtime wrapper
    * src/registry: local module registry with semver version control and wasi capabilities

### 使用说明

**In one termial**

```
cargo run
```
until log `Server::run{addr=0.0.0.0:10000}: warp::server: listening on http://0.0.0.0:10000` shows up!

**In the other termial**

add a wasm app from benches and run it:
```
curl "127.0.0.1:10000/function/add/echo/1.0.0/benches%2Fecho_string.wasm/false"
curl -X POST -H "Content-Type: application/json" -d '{"str":"budda"}' 127.0.0.1:10000/function/run/echo/1.0.0/echo_string
```

run default app provided, you need to run `make apps` befor run wasm-engine:
```
curl -X POST -H "Content-Type: application/json" -d '{}' 127.0.0.1:10000/function/run/hello/1.0.0/start
curl -X POST -H "Content-Type: application/json"  -d '{"args1":"6"}' 127.0.0.1:10000/function/run/fibonacci/1.0.0/start
curl -X POST -H "Content-Type: application/json"  -d '{"arg_uri":"yes", "arg_body":"yes", "arg_secret":"12345"}'  127.0.0.1:10000/function/run/authentication/1.0.0/authentication
```

or you can point to a directory with `-p, --preload-apps` option provided by wasm-engine binary, such as bench, it will load all .wasm suffix file for you:
```
wasm-engine -p benches
```

### 实验说明

run-wasm-engine.sh will build wasm-engine image for you and run in container with loading default authentication-wasi app.

```
make
make apps
cd experiments/concurrency
bash run-wasm-engine.sh 2 2147483648
```

In other terminal, changing run.sh the last line ip and result dir, then
```
bash run.sh
```