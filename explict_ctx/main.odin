package main

import "core:fmt"
import "core:runtime"

explicit_context_definition :: proc "c" () {
  // Try commenting the following statement out below
  context = runtime.default_context()

  fmt.println("\n#explicit context definition")
  dummy_procedure()
}

dummy_procedure :: proc() {
  fmt.println("dummy_procedure")
}

main :: proc() {
  explicit_context_definition() 
  fmt.println("done")
}
