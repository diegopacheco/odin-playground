package main

import "core:fmt"

main :: proc() {
    value: any = "test"
    switch v in value {
    case string:
        #assert(type_of(v) == string)
        fmt.println("String: ", v)
    case bool:
        #assert(type_of(v) == bool)
        fmt.println("Bool: ", v)
    case i32, f32:
        fmt.println("Number: ", v)
    case:
        fmt.println("Default: ", v)
    }
}