package main

import "core:fmt"
import "core:math"

length2 :: proc(v: [2]f32) -> f32 {
    return math.sqrt(v[0]*v[0] + v[1]*v[1])
}

length3 :: proc(v: [3]f32) -> f32 {
    return math.sqrt(v[0]*v[0] + v[1]*v[1] + v[2]*v[2])
}

main :: proc() {
    v2 := [2]f32{3.0, 4.0}
    v3 := [3]f32{3.0, 4.0, 5.0}
    fmt.printf("Length of v2: %f\n", length2(v2))
    fmt.printf("Length of v3: %f\n", length3(v3))
}
