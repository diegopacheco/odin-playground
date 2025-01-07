package main

import "core:fmt"

main :: proc() {
  x: [dynamic]int
  append(&x, 1, 2, 3, 4, 5) // [1, 2, 3, 4, 5]
  pop(&x) // [1, 2, 3, 4]
  ordered_remove(&x, 0) // [2, 3, 4]
  unordered_remove(&x, 0) // [4, 3]
  fmt.println("x: %", x)
}
