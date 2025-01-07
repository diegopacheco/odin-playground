package main

import "core:fmt"

main :: proc() {
  x := [?]int{1, 2, 3, 4, 5}
  fmt.printf("x: %d\n", x)

  favorite_animals := [?]string{
	// Assign by index
	0 = "Raven",
	1 = "Zebra",
	2 = "Spider",
	// Assign by range of indices
	3..=5 = "Frog",
	6..<8 = "Cat"
 }
 fmt.printf("favorite_animals: %s\n", favorite_animals)
 fmt.printf("favorite_animals: %s\n", favorite_animals[3])
 fmt.printf("favorite_animals: %s\n", favorite_animals[4])
 fmt.printf("favorite_animals: %s\n", favorite_animals[5])

}
