var ffi = require("ffi");
var ref = require("ref");

var hello = ffi.Library("../../lib/libmylib.so", {
  add: ["int", ["int", "int"]]
  //    "minus": [int, [int, int]],
  //    "multiply": [int, [int, int]]
});

process.stdout.write("hello: ");
