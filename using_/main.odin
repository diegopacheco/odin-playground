package main

import "core:fmt"

Entity :: struct {
    position: Vec3
}

Vec3 :: struct {
    x, y, z: f32
}


main :: proc() {
  foo :: proc(entity: ^Entity) {
    using entity
    fmt.println(position.x, position.y, position.z)
  }

  e := Entity{position = Vec3{x = 1.0, y = 2.0, z = 3.0}}
  foo(&e)
}
