#!/bin/bash
PROJECT_DIR=$(git rev-parse --show-toplevel)
cpus="$1"
memory="$2"

copy_file_to_context() {
    cp "$PROJECT_DIR"/target/release/wasm-engine .
    cp "$PROJECT_DIR"/experiments/application/authentication-wasi/target/wasm32-wasi/release/authentication-wasi.wasm .
}

docker_build_run() {
    docker build -f dockerfile -t wasm-engine:authentication-wasi .
    docker run -itd --cpus "$cpus" --memory "$memory" -p 10000:10000 wasm-engine:authentication-wasi
}

isula_build_run() {
    isula-build ctr-img build -f dockerfile -o docker-daemon:wasm-engine:authentication-wasi .
    docker run -itd --cpus "$cpus" --memory "$memory" -p 10000:10000 wasm-engine:authentication-wasi
}

clean() {
    rm -f wasm-engine authentication-wasi.wasm
}

copy_file_to_context
isula_build_run
clean
