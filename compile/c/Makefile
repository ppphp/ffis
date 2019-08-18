
all: clean build install

clean:
	-rm libmylib.so

build:
	gcc -Ofast -g -fPIC -Wall -Werror -Wextra -pedantic mylib.c -shared -o libmylib.so

install:
	mkdir -p ../../lib
	ln -s `pwd`/libmylib.so ../../lib/libmylib.so
	ln -s `pwd`/mylib.h ../../lib/mylib.h
