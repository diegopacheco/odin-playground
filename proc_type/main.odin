package main

import "core:fmt"

main :: proc() {
  Callback :: proc() -> int 
  a: Callback // nil 
  assert(a == nil)
  
  a = proc() -> int { return 0 }
  fmt.println(a()) // 0
  a = proc() -> int { return 100 }
  fmt.println(a()) // 100

}
