package main

import "core:fmt"

// SOA Data Types #
// 
// Array of Structures (AoS), Structure of Arrays (SoA), and Array of Structures of Arrays (AoSoA)
// refer to differing ways to arrange a sequence of data records in memory, with regard to interleaving.
// These are of interest in SIMD and SIMT programming.
//

main :: proc() {
  Vector3 :: struct {x, y, z: f32}

N :: 2
v_aos: [N]Vector3
v_aos[0].x = 1
v_aos[0].y = 4
v_aos[0].z = 9

fmt.println(len(v_aos))
fmt.println(v_aos[0])
fmt.println(v_aos[0].x)
fmt.println(&v_aos[0].x)

v_aos[1] = {0, 3, 4}
v_aos[1].x = 2
fmt.println(v_aos[1])
fmt.println(v_aos)

v_soa: #soa[N]Vector3

v_soa[0].x = 1
v_soa[0].y = 4
v_soa[0].z = 9


// Same syntax as AOS and treat as if it was an array
fmt.println(len(v_soa))
fmt.println(v_soa[0])
fmt.println(v_soa[0].x)
fmt.println(&v_soa[0].x)
v_soa[1] = {0, 3, 4}
v_soa[1].x = 2
fmt.println(v_soa[1])

// Can use SOA syntax if necessary
v_soa.x[0] = 1
v_soa.y[0] = 4
v_soa.z[0] = 9
fmt.println(v_soa.x[0])

// Same pointer addresses with both syntaxes
assert(&v_soa[0].x == &v_soa.x[0])


// Same fmt printing
fmt.println(v_aos)
fmt.println(v_soa)
}
