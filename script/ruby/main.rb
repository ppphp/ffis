require 'ffi'

module Hello
  extend FFI::Library
  ffi_lib FFI::Library::LIBC
  ffi_lib 'lib/libmylib.so'
  attach_function :hello, [:string], :string
  attach_function :add, [:int, :int], :int
end

puts Hello.add(1, 2)

puts Hello.hello("hello")
