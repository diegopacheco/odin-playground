package main

import "core:fmt"

main :: proc() {
  x := make([dynamic]int, 0, 16)
  inject_at(&x, 0, 10)
  inject_at(&x, 3, 10) // resizes till length

  fmt.eprintln(x[:], len(x), cap(x)) // [10, 0, 0, 10] 4 16
  assign_at(&x, 3, 20)
  assign_at(&x, 4, 30)
  
  fmt.eprintln(x[:], len(x), cap(x)) // [10, 0, 0, 20, 30] 5, 16
  assign_at(&x, 5, 40, 50, 60)
  fmt.eprintln(x[:], len(x), cap(x)) // [10, 0, 0, 20, 30, 40, 50, 60] 8 16

}
