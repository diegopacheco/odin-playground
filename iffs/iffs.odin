package main

import "core:fmt"

main :: proc() {
	x: int = 0

	if x >= 0 {
		fmt.println("x is positive")
	}

	if x := foo(); x < 0 {
		fmt.println("x is negative")
	}

	if x := foo(); x < 0 {
		fmt.println("x is negative")
	} else if x == 0 {
		fmt.println("x is zero")
	} else {
		fmt.println("x is positive")
	}

}

foo :: proc() -> int {
    return -1
}