test:
	cargo test

code-cov:
	cargo llvm-cov --all-features --workspace --lcov --output-path lcov.info

code-cov-report:
	cargo llvm-cov report --html --output-dir coverage

code-linter:
	cargo clippy -- -D warnings

code-fmt:
	cargo fmt -- --check

cargo-audit:
	cargo audit

cargo-deny:
	cargo deny check advisories
