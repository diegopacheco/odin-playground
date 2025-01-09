package main

import "core:fmt"

main :: proc() {
  a := typeid_of(bool)
  i: int = 123
  b := typeid_of(type_of(i))

  fmt.printf("a: %d\n", a)
  fmt.printf("b: %d\n", b)
  fmt.printf("i: %d\n", i)
}
