package main

import "core:fmt"

main :: proc() {
  Vector2 :: struct {
  	x: f32,
	y: f32,
  }
  v := Vector2{1, 2}
  v.x = 4
  fmt.println(v.x)
}
