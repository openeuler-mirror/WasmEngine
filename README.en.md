# WasmEngine

#### Introduction

WasmEngine is a lightweight WebAssembly function engine that provides  high-concurrency function execution and millisecond-level function fast  cold start capabilities based on the WebAssembly sandbox-level security  isolation model. 

**WasmEngine architecture diagram**

#### ![wasm-engine-arch](./docs/WasmEngine-arch.png)Software 

#### Architecture

Popular FaaS frameworks generally use RESTful APIs of HTTP protocol to connect  with back-end function execution engines. WasmEngine also adopts a  similar solution, providing a set of RESTful faas-provider APIs, which  provide function adding, deleting, modifying, querying and function  invocation APIs. 

The detailed interface is defined as follows: 

**deploy function deployment API**

- HTTP request type: POST 
- URL link: /function/deploy 
- Input parameters: JSON format，{function_name: String, function_image: String, wasi_cap: bool}
- Return value: HTTP status code and message content or operation failure message 

**delete the function interface**

- HTTP request type: POST 
- URL link: /function/delete 
- Input parameters: JSON format, {function_name: String} 
- Return value: HTTP status code and message content or operation failure message 

**list all function interfaces**

- HTTP request type: GET 
- URL link: /function/list 
-  Input parameters: Not involved 
- Return value: HTTP status code and message content, including a list of all  functions deployed on the node or error messages about query failures 

**query function**

- HTTP request type: POST 
- URL link: /function/query 
- Input parameters: JSON format, {function_name: String} 
- Return value: HTTP status code and message content, including the details of the query function or the failure error message 

**query function**

- HTTP request type: POST 
- URL link: /function/invoke 
- Input parameters: JSON format, {function_name: String, args: HashMap}, where  args stores the key-value pair in the form of function parameter kv, and for function parameter types without key, the value is taken as the  parameter by default 
- Return value: HTTP status code and message content, including the details of the query function or the failure error message 

## Compile and install the tutorial

WasmEngine is developed in Rust, so it relies on the Rust compilation toolchain for compilation and construction. 

Rust Language Environment Installation Rust installation and deployment can be found in the official documentation

**WasmEngine compilation**

```
$ cd WasmEngine

$ cargo build --release
   Compiling libc v0.2.126
   Compiling proc-macro2 v1.0.36
   Compiling unicode-xid v0.2.2
   Compiling syn v1.0.84
   Compiling cfg-if v1.0.0
   ...
   Finished release [optimized] target(s) in 3m 41s

# 编译生成的二进制文件存放的路径如下
$ ls target/release/
build  deps  examples  incremental  libwasm_engine.d  libwasm_engine.rlib  wasm_engine  wasm_engine.d
```

**Rust Wasm compilation toolchain installation**

The Rust compilation toolchain supports the following target formats for compiling to wasm: 

```
rustup target list | grep wasm
wasm32-unknown-emscripten
wasm32-unknown-unknown
wasm32-wasi
```

The differences between the three different target formats: 

- wasm32-unknown-emscripten: Emscripten mode, which compiles code into wasm applications through the Emscripten compilation toolchain emcc, in which wasm applications also  rely on the ABI interface provided by Emscripten through import, which  is usually used in browser scenarios
- wasm32-unknown-unknown: Wasm standard mode, the wasm standard format without external  dependencies, does not rely on external interface capabilities through  import, and usually only has numerical computing capabilities
- wasm32-wasi: In WASI mode, wasm applications can import externally dependent WASI  interfaces through import, and through wasi interfaces, wasm  applications have the ability to expand file directory operations and  network connections

In the server scenario, only `wasm32-wasi` and are currently supported `wasm32-unknown-unknown` .

The specific installation method is as follows: 

```
$ rustup target add wasm32-unknown-unknown wasm32-wasi
$ rustup target list | grep wasm
wasm32-unknown-emscripten
wasm32-unknown-unknown (installed)
wasm32-wasi (installed)
```

## Code structure

- benches: Stores the benchmark code, `echo_string` which contains `gcd` wat files for `authentication` three different test functions
- experiments/application: Stores some common function code that can be compiled into Wasm format 
- src/main.rs: the main entry point of the WasmEngine engine, which defines the RESTFULT API access interface 
- src/wrapper: Encapsulates the runtime of the underlying WebAssembly Runtime 
- src/function_store: Stores the Wasm function image management and Wasm Module instance management code 

## Directions for use

1. Start the WasmEngine application in a terminal 

```

$ su root

$ export RUST_LOG=wasm_engine=debug

$ ./wasm_engine
2022-07-28T12:32:10.007200Z  INFO wasm_engine::function_store::local_store: no persist json file exist, restore end
2022-07-28T12:32:10.007255Z  INFO wasm_engine: WasmEngine listening on http://0.0.0.0:10000, waiting for request...
```

2. Compile the sample function given in the experiments directory 

```

$ make apps

Building: fibonacci
    Finished release [optimized] target(s) in 0.00s
Building: hello
    Finished release [optimized] target(s) in 0.00s
Building: authentication
    Finished release [optimized] target(s) in 0.28s
Building: authentication-wasi
    Finished release [optimized] target(s) in 0.00s
```

After the compilation is completed, you can find the generated wasm function  in the target directory under the source directory of each function in  experiments/application/. 

For example, the `authentication` wasm file generated by the function compilation has a path of `target/wasm32-unknown-unknown/release/authentication.wasm` 

3. Package the generated Wasm function binary file into a container image format,  upload it to the function image repository, and pull it when WasmEngine  deploys it 

For details about how to create a Wasm function image, see the following section on creating a Wasm function image.

4. WasmEngine provides RESTful API descriptions 

The following uses `authentication` the AND `hello` function as an example to describe function deployment, query, deletion, and calling

**Deploy the authentication function**

```
$ curl --location --request POST 'localhost:10000/function/deploy' \
--header 'Content-Type: application/json' \
--header 'Content-Type: text/plain' \
--data-raw '{
    "function_name": "authentication",
    "function_image": "127.0.0.1:5000/authentication-wasm:v4",
    "wasi_cap": false
}'

status code: 200, message: deploy function authentication successfully!
```

**Deploy the hello function**

```
$ curl --location --request POST 'localhost:10000/function/deploy' \
--header 'Content-Type: application/json' \
--header 'Content-Type: text/plain' \
--data-raw '{
    "function_name": "hello",
    "function_image": "127.0.0.1:5000/hello-wasm:v2",
    "wasi_cap": true
}'

status code: 200, message: deploy function hello successfully!
```

**Query all deployed functions**

```
$ curl --location --request GET 'localhost:10000/function/list' \
--header 'Content-Type: application/json' \
--header 'Content-Type: text/plain'

status code: 200, message: all deployed function info: [{func_name: authentication, func_image_name: 127.0.0.1:5000/authentication-wasm:v4, wasi_cap: false}, {func_name: hello, func_image_name: 127.0.0.1:5000/hello-wasm:v2, wasi_cap: true}]
```

**Query the authentication function information**

```
$ curl --location --request POST 'localhost:10000/function/query' \
--header 'Content-Type: application/json' \
--header 'Content-Type: text/plain' \
--data-raw '{
  "function_name": "authentication"
}'
status code: 200, message: queried function info: FunctionEntry { func_name: "authentication", func_image_name: "127.0.0.1:5000/authentication-wasm:v4", func_local_path: "/var/lib/wasmengine/functions/authentication/authentication.wasm", wasi_cap: false }
```

**Call the authentication function**

```
$ curl --location --request POST 'localhost:10000/function/invoke' \
--header 'Content-Type: application/json' \
--header 'Content-Type: text/plain' \
--data-raw '{
  "function_name": "authentication",
  "args": {"arg_uri": "yes", "arg_body": "yes", "arg_secret": "12345"}
}'

status code: 200, message: {"status":"403","body":"<html><h1>Auth Forbidden!</h1><p>hash c5187dd86a648a819f527c7a8a4f7bf4 secret 12345</p></html>"}
```

**Delete the deployed hello function**

```
$ curl --location --request POST 'localhost:10000/function/delete' \
--header 'Content-Type: application/json' \
--header 'Content-Type: text/plain' \
--data-raw '{
  "function_name": "hello"
}'

status code: 200, message: delete function hello successfully!
```

## Wasm function image creation

WasmEngine also requires the management and distribution capabilities similar to  container images, so WasmEngine reuses the unified management and  distribution capabilities of container image repositories. The developer makes the Wasm function into a container image, and WasmEngine pulls it from the remote image repository. 

You can use the isula build or docker build container image builder on openEuler to build container images. 

1. Create an empty directory and copy the wasm application files generated in the previous step to the empty directory 

```
$ mkdir build && cd build
$ cp target/wasm32-unknown-unknown/release/authentication.wasm .
```

2. Write the Dockerfile required for container image build, as follows: 

```
$ cat Dockerfile
FROM scratch
ADD authentication.wasm /
```

3. Compile and build the Wasm container image 

```
$ sudo docker build --tag 127.0.0.1:5000/authentication-wasm:v2 .
Sending build context to Docker daemon  1.787MB
Step 1/2 : FROM scratch
 --->
Step 2/2 : ADD authentication.wasm /
 ---> 897a9e7a1ce6
Successfully built 897a9e7a1ce6
Successfully tagged 127.0.0.1:5000/authentication-wasm:v2
```

4. Push the container image to the container registry 

If it is used for local development verification, developers can start a container registry service locally through `registry` the image.

```
$ sudo docker run -itd -v /home/flyflypeng/registry:/var/lib/registry -p 5000:5000 --restart=always --name registry registry:latest
```

To push a container image to a container registry: 

```
$ sudo docker push 127.0.0.1:5000/authentication-wasm:v2
The push refers to repository [127.0.0.1:5000/authentication-wasm]
720b9e537c85: Pushed
v2: digest: sha256:a7b8e58e4b9c2abba6a39636dbc904e01c4cfa7e1d4cc6a97f8e955e148af41e size: 527
```

## Precautions

- The Wasm target format needs to meet the official WebAssembly Spec 1.0 standard 
- If the application needs WASI interface support, only the generated Wasm  files can be compiled through the wasi-sdk or the wasm32-unknown-wasi  compilation toolchain of the Rust language 
- You can't set a resource quota for each function call 
- Only single-function running models are supported, and models cannot be called between functions 
- Only one wasm module file is allowed in a Wasm function image 
