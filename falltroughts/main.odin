package main

import "core:fmt"

foo :: proc() {
  fmt.println("foo")
}

bar :: proc() {
  fmt.println("bar")
}

main :: proc() {

        i := 0

        switch i {
        case 0:
                foo()
                fallthrough
        case 1:
                bar()
        }

}
