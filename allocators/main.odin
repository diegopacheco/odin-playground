package main

import "core:fmt"

main :: proc() {
  ptr := new(int)
  ptr^ = 123
  fmt.printf("ptr: %d\n", ptr^)

  x: int = 123
  ptr = new_clone(x)
  assert(ptr^ == 123)
  fmt.printf("ptr: %d\n", ptr^)

  slice := make([]int, 65)
  dynamic_array_zero_length := make([dynamic]int)
  dynamic_array_with_length := make([dynamic]int, 32)
  dynamic_array_with_length_and_capacity := make([dynamic]int, 16, 64)
  fmt.printf("slice: %d\n", slice[0])

  made_map := make(map[string]int)
  made_map_with_reservation := make(map[string]int, 64)
  fmt.printf("made_map: %d\n", made_map["hello"])

  free(ptr)
  delete(slice)
  delete(dynamic_array_zero_length)

  fmt.printf("ptr: %d\n", ptr^)
}
