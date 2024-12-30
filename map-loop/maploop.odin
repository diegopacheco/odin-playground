package main

import "core:fmt"

main :: proc() {
	
	some_map := map[string]int{"A" = 1, "C" = 9, "B" = 4}
	defer delete(some_map)

	for key, &value in some_map {
		value += 1
	}

	fmt.println(some_map["A"]) // 2
	fmt.println(some_map["C"]) // 10
	fmt.println(some_map["B"]) // 5
}