
.DEFAULT_GOAL := all

.PHONY: rust-test
rust-test:
	cargo test

.PHONY: pl6-test
pl6-test: target/debug/librust_perl6.*
	cd pl6 && prove -e perl6 -r t/ -v

target/debug/librust_perl6.*: src/lib.rs
	cargo build

.PHONY: all
all: rust-test pl6-test

.PHONY: clean
clean:
	cargo clean
