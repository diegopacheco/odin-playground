package main

import "core:fmt"

multiply :: proc(x: int, y:= 1) -> int {
  return x * y
}

main :: proc() {
  fmt.println("multiply 2 == ", multiply(2))
  fmt.println("multiply 2 x 3 == ", multiply(2,3))
}
