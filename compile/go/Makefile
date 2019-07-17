
all: clean build install

clean:
	-rm libmylib.so libmylib.h

build:
	go build -o libmylib.so -buildmode=c-shared ./mylib.go

install:
	mkdir -p ../../lib
	ln -s `pwd`/libmylib.so ../../lib/libmylib.so
	ln -s `pwd`/libmylib.h ../../lib/libmylib.h
