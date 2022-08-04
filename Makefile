RUST_SCRIPT = $(shell command -v rust-script)

.PHONY: wasm-engine
wasm-engine:
	@cargo build --release
	@mv /usr/bin/wasm_engine /usr/bin/wasm_engine-bak
	@cp ./target/release/wasm_engine /usr/bin

.PHONY: apps
apps:
ifeq ($(RUST_SCRIPT), "")
	echo "rust-script not exist, installing......"
	cargo install rust-script
endif
	@cp build.rs run.sh
	@chmod +x run.sh
	@./run.sh | grep -v cargo:rerun | grep -v cargo:warning | grep -v cargo:rustc-env || true
	@rm -f run.sh

.PHONY: cover
cover:
	cargo tarpaulin --target-dir target-cover --skip-clean -o Html --output-dir output --exclude-files src/main.rs benches/benchmark.rs target/* tests/

.PHONY: cover-clean
cover-clean:
	cargo tarpaulin --target-dir target-cover -o Html --output-dir output --exclude-files src/main.rs benches/benchmark.rs target/* tests/
