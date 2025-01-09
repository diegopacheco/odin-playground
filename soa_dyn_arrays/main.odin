package main

import "core:fmt"

// SOA Data Types #
// 
// Array of Structures (AoS), Structure of Arrays (SoA), and Array of Structures of Arrays (AoSoA)
// refer to differing ways to arrange a sequence of data records in memory, with regard to interleaving
// These are of interest in SIMD and SIMT programming.
// 

main :: proc() {
        Vector3 :: struct {x: i8, y: i16, z: f32}

        N :: 3
        v: #soa[N]Vector3
        v[0].x = 1
        v[0].y = 4
        v[0].z = 9

        s: #soa[]Vector3
        s = v[:]
        assert(len(s) == N)
        fmt.println(s)
        fmt.println(s[0].x)

        a := s[1:2]
        assert(len(a) == 1)
        fmt.println(a)
}
