package main

import "core:fmt"

fibonacci :: proc(n: int) -> int {
	switch {
	case n < 1:
		return 0
	case n == 1:
		return 1
	}
	return fibonacci(n-1) + fibonacci(n-2)
}

main :: proc() {
        fmt.println(fibonacci(3)) // 2
}
