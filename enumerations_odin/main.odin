package main

import "core:fmt"

main :: proc() {
        
   Direction :: enum{North, East, South, West}

   fmt.println("North: ", int(Direction.North) == 0)
   fmt.println("East: ", int(Direction.East) == 1)
   fmt.println("South: ", int(Direction.South) == 2)
   fmt.println("West: ", int(Direction.West) == 3)

   for direction, index in Direction {
	fmt.println(index, direction) 
	// 0 North
	// 1 East
	// 2 South
	// 3 West
   }

}
