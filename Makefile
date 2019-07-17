
all:
	@echo "let's ffi"
	@echo "make compile_$YOUR_COMPILE_LANGUAGE"
	@echo "make run_$YOUR_SCRIPT_LANGUAGE"

clean:
	-rm -r lib/*

clean_all:
	-rm -r lib/*
	make clean -C compile/c
	make clean -C compile/cpp
	make clean -C compile/go
	make clean -C compile/rust
	-rm script/go/main

compile_c: clean
	make -C compile/c

compile_cpp: clean
	make -C compile/cpp

compile_go: clean
	make -C compile/go

compile_rust: clean
	make -C compile/rust

run_ruby:
	ruby script/ruby/main.rb

run_python:
	python script/python/main.py

run_go:
	go build -o ./script/go/main ./script/go/main.go
	./script/go/main
