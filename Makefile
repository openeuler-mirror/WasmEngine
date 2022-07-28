RUST_SCRIPT = $(shell command -v rust-script)

.PHONY: wasm-engine
wasm-engine:
	@cargo build --release
	@mv /usr/bin/wasm-engine /usr/bin/wasm-engine-bak
	@cp ./target/release/wasm-engine /usr/bin

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