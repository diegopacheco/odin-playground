package main

import "core:fmt"

main :: proc() {
	array := [?]int { 10, 20, 30, 40, 50 }

	#reverse for x in array {
		fmt.println(x) // 50 40 30 20 10
	}

}