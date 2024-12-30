package main

import "core:fmt"

main :: proc() {

	for i := 0; i < 10; i += 1 {
		fmt.println(i)
	}

	for i in 0..<10 {
		fmt.println(i)
	}

}