var ffi = require("ffi");
var ref = require("ref");

process.stdout.write(ffi);

var hello = ffi.Library("../../lib/libmylib.so", {
  add: ["int", ["int", "int"]]
  //    "minus": [int, [int, int]],
  //    "multiply": [int, [int, int]]
});

process.stdout.write("hello: ");
