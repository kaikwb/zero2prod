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

cargo-deny:
	cargo deny check advisories

migrate-db:
	SKIP_DOCKER=true ./scripts/init_db.sh

prepare-queries:
	cargo sqlx prepare --workspace -- --all-targets --all-features

check-queries:
	cargo sqlx prepare --workspace --check -- --all-targets
