package main

import "core:fmt"

main :: proc() {
  fibonaccis := [6]int{0, 1, 1, 2, 3, 5}
  s: []int = fibonaccis[1:4] // creates a slice which includes elements 1 through 3
  fmt.println(s) // 1, 1, 2
}
