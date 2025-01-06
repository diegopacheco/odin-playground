package main

import "core:fmt"

main :: proc() {

        x :: 13
        c :: 'a'

        switch c {
                case 'A'..='Z', 'a'..='z', '0'..='9':
                        fmt.println("c is alphanumeric")
        }

        switch x {
                case 0..<10:
                        fmt.println("units")
                case 10..<13:
                        fmt.println("pre-teens")
                case 13..<20:
                        fmt.println("teens")
                case 20..<30:
                        fmt.println("twenties")
        }

}
