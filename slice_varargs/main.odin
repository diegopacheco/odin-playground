package main

import "core:fmt"

sum :: proc(nums: ..int) -> (result: int) {
  for n in nums {
    result += n
  }
  return
}

main :: proc() {
  fmt.println(sum())              // 0
  fmt.println(sum(1, 2))          // 3
  fmt.println(sum(1, 2, 3, 4, 5)) // 15
  
  odds := []int{1, 3, 5}
  fmt.println(sum(..odds))        // 9, passing a slice as varargs
}
