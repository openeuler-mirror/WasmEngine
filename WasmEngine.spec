%global debug_package %{nil}

Name:           WasmEngine
Version:        v0.1.2
Release:        4
Summary:        WasmEngine is a webassembly function engine, which provides high concurrency and sandbox security.

License:        MulanPSL-2.0
URL:            https://gitee.com/openeuler/WasmEngine
Source0:        %{name}-%{version}.tar.gz
Source1: git-commit
Source2: VERSION-openeuler
Source3: apply-patches
Source4: gen-version.sh
Source5: series.conf
Source6: patch.tar.gz

BuildRequires:  rust,cargo,rust-packaging,git
BuildRequires:  gcc,dtc,openssl-devel

%description
Based on Rust programming language, WasmEngine is a webassembly function engine, which provides high concurrency and sandbox security.
Summary:        %{summary}

%prep
cp %{SOURCE0} .
cp %{SOURCE1} .
cp %{SOURCE2} .
cp %{SOURCE3} .
cp %{SOURCE4} .
cp %{SOURCE5} .
cp %{SOURCE6} .

%build
sh ./apply-patches
rm -f build.rs

mkdir -p .cargo
touch .cargo/config
cat > .cargo/config << EOF
[source.crates-io]
replace-with = "vendored-sources"

[source.vendored-sources]
directory = "vendor"

[profile.release]
strip = true
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
* Tue Mar 07 2023 xingweizheng <xingweizheng@huawei.com> - v0.1.2-4
- Type: bugfix
- CVE: NA
- SUG: restart
- DESC: strip wasm_engine binary
* Mon Aug 08 2022 jiangpengfei <jiangpengfei9@huawei.com> - v0.1.2-3
- Type: bugfix
- CVE: NA
- SUG: restart
- DESC: patch structure init, sync upstream patches

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