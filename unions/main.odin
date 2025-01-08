package main

import "core:fmt"

Value :: union {
  bool,
  i32,
  f32,
  string,
}

main :: proc() {
  v: Value
  v = "Hellope"

  // type assert that `v` is a `string` and panic otherwise
  s1 := v.(string)

  // type assert but with an explicit boolean check. This will not panic
  s2, ok := v.(string)

  fmt.println(s1)
  fmt.println(s2)
  fmt.println(ok)
}
