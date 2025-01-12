package main

import "core:fmt"

MyPacked :: struct #packed {
        u: u32, 
        i: i32, 
        f: f32
}

main :: proc() {
    s := MyPacked{u = 0, i = 1, f = 2.0}
    fmt.println("s = ", s.u, " ", s.i, " ", s.f)
}