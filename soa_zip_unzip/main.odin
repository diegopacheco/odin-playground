package main

import "core:fmt"

main :: proc() {
  x := []i32{1, 3, 9}
  y := []f32{2, 4, 16}
  z := []b32{true, false, true}

  // produce an #soa slice with the normal slices passed
  s := soa_zip(a=x, b=y, c=z)

  // iterate over the #soa slice
  for v, i in s {
	fmt.println(v, i) // exactly the same as s[i]
	// NOTE: `v` is NOT a temporary value but has a specialized addressing mode
	// which means that when accessing v.a etc, it does the correct transformation
	// internally:
	//         s[i].a === s.a[i]
	fmt.println(v.a, v.b, v.c)
  }  

  // Recover the slices from the #soa slice
  a, b, c := soa_unzip(s)
  fmt.println(a, b, c)

}
