package main

import "core:fmt"

Foo :: struct #align(4) {
    b: bool,
}
Bar :: struct #raw_union #align(4) {
    i: i32,
    c: u8,
}

main :: proc() {
  f := Foo{b=true}
  fmt.printf("Foo: %.*s\n", f)

  b := Bar{c=42}
  fmt.printf("Bar: %.*s\n", b)
}
