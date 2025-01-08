package main

import "core:fmt"

main :: proc() {
  m := make(map[string]int)
  defer delete(m)
  m["Bob"] = 2
  fmt.println(m["Bob"])
}
