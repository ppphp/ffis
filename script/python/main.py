from ctypes import CDLL, c_char_p

mylib = CDLL('lib/libmylib.so')

print(mylib.add(1, 2))
hello = mylib.hello
hello.argtypes = [c_char_p]
hello.restype = c_char_p
print(hello(c_char_p(b"hello")).decode("utf-8"))
