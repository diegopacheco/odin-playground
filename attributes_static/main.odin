package main

import "core:fmt"

test :: proc() -> int {
    @(static) foo := 0   // IMHO this is EVIL!
    foo += 1
    return foo
}

main :: proc() {
    fmt.println(test()) // prints 1
    fmt.println(test()) // prints 2
    fmt.println(test()) // prints 3
}
