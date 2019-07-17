# ffis

There are some ffi samples in the repo.

It is hard for me to mix languages, but I can follow some standard. Almost every ffi lib follow c like share library interface, so I can compile them in a similar way and run them in a similar way.

## how to run

first compile target language to lib folder

```sh
make compile_$TARGET_LANGUAGE
```

then run the script

```
make run_$SCRIPT_LANGUAGE
```

## support languages

compile languages
- go
- c
- cpp
- rust

script languages
- go
- python
- ruby

## roadmap

support struct

support more languages
- dart
- nim
- haskell
- sql

