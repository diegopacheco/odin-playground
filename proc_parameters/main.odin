package main

import "core:fmt"

multiply :: proc(x, y: int) -> int {
  return x * y
}

main :: proc() {
  fmt.println(multiply(137, 432))
}
