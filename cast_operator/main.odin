package main

import "core:fmt"

main :: proc() {
  i := 123
  f := cast(f64)i
  u := cast(u32)f

  fmt.printf("i: %d \n", i)
  fmt.printf("f: %f \n", f)
  fmt.printf("u: %d \n", u)
}

