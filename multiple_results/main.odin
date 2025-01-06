package main

import "core:fmt"

swap :: proc(x, y: int) -> (int, int) {
  return y, x
}

main :: proc() {
  a, b := swap(1, 2)
  fmt.println(a, b) // 2 1
}
