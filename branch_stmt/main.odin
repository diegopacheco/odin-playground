package main

import "core:fmt"

main :: proc() {
        cond := true
        cond1 := true
        cond2 := true

        for cond {
                switch {
                case:
                        if cond {
                                break // break out of the `switch` statement
                        }
                }

                break // break out of the `for` statement
        }

        loop: for cond1 {
                for cond2 {
                        break loop // leaves both loops
                }
        }

        exit: {
                if true {
                        break exit // works with labeled blocks too
                }
                fmt.println("This line will never print.")
        }
}
