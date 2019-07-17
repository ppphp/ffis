package main

/*
#cgo LDFLAGS: -L./../../lib/ -Wl,-rpath=\$ORIGIN/../../lib -lmylib
#include "../../lib/libmylib.h"
*/
import "C"
import "fmt"

func main() {
	fmt.Println(C.add(1, 2))
	fmt.Println(C.GoString(C.hello(C.CString("hello"))))
}
