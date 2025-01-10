package main

import "core:fmt"

main :: proc() {
  m: map[string]int
  i: int
  ok: bool

  if i, ok = m["hellope"]; !ok {
	i = 123
  }
  
  // The above can be mapped to `or_else`
  i = m["hellope"] or_else 123
  assert(i == 123)
  fmt.printf("i: %d\n", i)
  
}
