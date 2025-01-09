package main

import "core:fmt"

main :: proc() {
  m: matrix[2, 3]f32
  m = matrix[2, 3]f32{
	1, 9, -13,
	20, 5, -6,
  }
  fmt.printf("m: %v\n", m)        
}
