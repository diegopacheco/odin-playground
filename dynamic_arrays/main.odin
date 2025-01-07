package main

import "core:fmt"

main :: proc() {
  x: [dynamic]int
  append(&x, 123)
  append(&x, 4, 1, 74, 3) // append multiple values at once
  fmt.printf("x: %d\n", x)      
}
