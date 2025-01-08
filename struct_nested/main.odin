package main

import "core:fmt"

Bar :: struct {
    x, y, z: int,
}

Foo :: struct {
    a, b, c: int,
    bar_1: Bar,
    bar_2: Bar,
    hidden: Bar,
}

main :: proc() {
  fmt.printf("Size of Foo: %d\n", size_of(Foo))
  fmt.printf("Size of Foo.bar_1: %d\n", size_of(Bar))
  fmt.printf("Size of Foo.bar_2: %d\n", size_of(Bar))
  fmt.printf("Size of Foo.hidden: %d\n", size_of(Bar))
}