package main

import "core:fmt"

Entity :: struct {
    x: int,
    y: int,
    z: int,
}

Frog :: struct {
    ribbit_volume: f32,
    entity: Entity,
}

foo :: proc(entity: Entity) {
    fmt.println(entity.x, entity.y, entity.z)
}

main :: proc() {
    frog: Frog
    frog.entity.x = 123
    foo(frog.entity)
}