%global debug_package %{nil}

Name:           WasmEngine
Version:        v0.1.2
Release:        2
Summary:        WasmEngine is a webassembly function engine, which provides high concurrency and sandbox security.

License:        MulanPSL-2.0
URL:            https://gitee.com/openeuler/WasmEngine
Source0:        %{name}-%{version}.tar.gz

BuildRequires:  rust,cargo,rust-packaging
BuildRequires:  gcc,dtc,openssl-devel

%description
Based on Rust programming language, WasmEngine is a webassembly function engine, which provides high concurrency and sandbox security.
Summary:        %{summary}

%prep
%autosetup -p1

%build
rm -f build.rs

mkdir -p .cargo
touch .cargo/config
cat > .cargo/config << EOF
[source.crates-io]
replace-with = "vendored-sources"

[source.vendored-sources]
directory = "vendor"
EOF

CARGO_HOME=.cargo cargo build --release

echo "build wasm success"

%install
install -d %{buildroot}%{_bindir}
install -p ./target/release/wasm_engine %{buildroot}/usr/bin/wasm_engine

%clean
rm -rf %{buildroot}

%files
%attr(550,root,root) %{_bindir}/wasm_engine

%changelog
* Mon Aug 08 2022 xingweizheng <xingweizheng@huawei.com> - v0.1.2-2
- Type: requirement
- CVE: NA
- SUG: restart
- DESC: add patch directory

* Fri Jul 29 2022 jiangpengfei <jiangpengfei9@huawei.com> - v0.1.2-1
- Type: requirement
- CVE: NA
- SUG: restart
- DESC: package init