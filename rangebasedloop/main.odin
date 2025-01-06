package main

import "core:fmt"

main :: proc() {
        for i in 0..<10 {
                fmt.println(i)
        }
        
        for i in 0..=9 {
	        fmt.println(i)
        }
}
