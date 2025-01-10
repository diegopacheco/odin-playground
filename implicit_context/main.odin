package main


import "core:fmt"
import "core:mem"

my_custom_allocator :: proc() -> mem.Allocator {
    // Use the global allocator instead of mem.default_allocator
    return mem.Allocator{}
}

main :: proc() {
    c := context // copy the current scope's context

    context.user_index = 456
    {
        context.allocator = my_custom_allocator()
        context.user_index = 123
        supertramp() // the `context` for this scope is implicitly passed to `supertramp`
    }

    // `context` value is local to the scope it is in
    assert(context.user_index == 456)
    fmt.printf("context.user_index: %d\n", context.user_index)
}

supertramp :: proc() {
    c := context // this `context` is the same as the parent procedure that it was called from
    // From this example, context.user_index == 123
    // A context.allocator is assigned to the return value of `my_custom_allocator()`

    // The memory management procedure uses the `context.allocator` by default unless explicitly specified otherwise
    ptr := new(int)
    free(ptr)
}