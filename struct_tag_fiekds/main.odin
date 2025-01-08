package main

import "core:fmt"

User :: struct {
  flag: bool, // untagged field
  age:  int    "custom whatever information",
  name: string `json:"username" xml:"user-name" fmt:"q"`, // `core:reflect` layout
}

main :: proc() {
  user := User{true, 42, "Alice"}
  fmt.printf("User: %q\n", user)
}
