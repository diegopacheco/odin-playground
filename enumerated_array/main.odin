package main

import "core:fmt"

main :: proc() {
  Direction :: enum{North, East, South, West}

  Direction_Vectors :: [Direction][2]int {
	.North = {  0, -1 },
	.East = { +1,  0 },
	.South = {  0, +1 },
	.West = { -1,  0 },
 }

 assert(Direction_Vectors[.North] == { 0, -1 })
 assert(Direction_Vectors[.East] == { 1, 0 })
 assert(Direction_Vectors[cast(Direction) 2] == { 0, 1 })
 fmt.printf("All tests passed\n")
}
