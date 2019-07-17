# go ffi interface

Go ffi is based on psuedo module C. It is a weird implementation compared to the other module but useful.

## signature

The module C will export symbol and signature by add a comment before the `func`.

```go
// export add
func add() { fmt.Println("Hello, world!") }
```

It will add symbol `add` into the output binary

## compiling

```sh
go build -o mylib.so -buildmode=c-shared ./main.go
```

Mostly, we use shared library to be output file. It can be static object to communicate with other languages, but it is not common.

## data types

The module C has a lot of data conventions and help functions. Export C type will benefit us a lot when using the library.

Go and C is the same in int type.

`*C.char` is the most common string type in C. It can be translated from go string type by `C.CString` function and into go string type by `C.GoString` function.
