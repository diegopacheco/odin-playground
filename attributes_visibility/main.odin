package main

import "core:fmt"

@(private="file")
my_variable: int = 5 // cannot be accessed outside this file

main :: proc() {
   fmt.printf("my_variable: %d\n", my_variable)
}
