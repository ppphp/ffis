
all: clean build install

clean:
	-rm libmylib.so

build:
	g++ -g -fPIC -Wall -Werror -Wextra -pedantic mylib.cpp -shared -o libmylib.so

install:
	mkdir -p ../../lib
	ln -s `pwd`/libmylib.so ../../lib/libmylib.so
	ln -s `pwd`/mylib.h ../../lib/libmylib.h
