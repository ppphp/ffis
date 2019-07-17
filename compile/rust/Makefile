
all: clean build install

clean:
	cargo clean

build:
	cargo build --release
	cbindgen --config cbindgen.toml --output mylib.h

install:
	ln -s `pwd`/target/release/libmylib.so ../../lib/libmylib.so
	ln -s `pwd`/mylib.h ../../lib/libmylib.h
