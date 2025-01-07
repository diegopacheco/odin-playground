package main

import "core:fmt"

main :: proc() {
  // by runes
  x := "ABC"
  for codepoint, index in x {
	fmt.println(index, codepoint)
	// 0 A
	// 1 B
	// 2 C
 }

  // by bytes - string length is in bytes
  for index in 0..<len(x) {
	fmt.println(index, x[index])
	// 0 65
	// 1 66
	// 2 67
 }
}
