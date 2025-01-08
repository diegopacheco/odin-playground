package main

import "core:fmt"

main :: proc() {
  Char_Set :: bit_set['A'..='Z'; u64]
  assert(size_of(Char_Set) == size_of(u64))

  fmt.printf("Char_Set size: %d\n", size_of(Char_Set))

}
