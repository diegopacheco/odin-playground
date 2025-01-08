package main

import "core:fmt"

main :: proc() {
  i := 123
  p := &i
  
  fmt.println("p^=", p^) // read `i` through the pointer `p`
  p^ = 1337       // write `i` through the pointer `p`

  x := p^ // ^ on the right
  fmt.println("x=",x)
}
