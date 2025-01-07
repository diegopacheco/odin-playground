package main

import "core:fmt"

sum :: proc(a: int, b: int) -> int {
  return a + b
}

main :: proc() {
 res := sum(b=1, a=2)
 fmt.println("Result: ", res)
}
