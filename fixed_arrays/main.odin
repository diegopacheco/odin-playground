package main

import "core:fmt"

main :: proc() {
  x := [5]int{1, 2, 3, 4, 5}
  for i in 0..=4 {
    fmt.println(x[i])
  }
}
