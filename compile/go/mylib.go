package main

import "C"
import "fmt"

// simple add
//export add
func add(a, b int64) int64 {
	return 1 + 2
}

// string
//export hello
func hello(world *C.char) *C.char {
	a := C.GoString(world)
	fmt.Println(a)
	return C.CString(a + " world")
}

func main() {}
