package main

import "core:fmt"
import "core:os"
import "core:math/rand"
import "core:time"

// Constants
max_attempts :: 6

main :: proc() {
    words := [5]string{"apple", "grape", "berry", "mango", "peach"}
    word_index := rand.int31() % len(words)
    word := words[word_index]
    guessed := make([]bool, 26) // For letters a-z
    attempts := 0
    word_so_far := make([]u8, len(word))
    for i := 0; i < len(word); i += 1 {
        word_so_far[i] = '_'
    }

    fmt.println("Welcome to Hangman!")
    fmt.println("Guess the 5-letter word one letter at a time.\n")

    for attempts < max_attempts {
        fmt.print("Word: ")
        for i := 0; i < len(word_so_far); i += 1 {
            fmt.printf("%c ", word_so_far[i])
        }
        fmt.println()

        fmt.println("Attempts left:", max_attempts - attempts)
        fmt.print("Guess a letter: ")

        buffer: [2]u8
        n, _ := os.read(os.stdin, buffer[:])
        if n <= 0 do continue
        
        guess := buffer[0]
        if guess >= 'A' && guess <= 'Z' {
            guess += 'a' - 'A'
        }

        if guess >= 'a' && guess <= 'z' {
            index := int(guess - 'a')
            if guessed[index] {
                fmt.printf("You already guessed '%c'\n\n", guess)
                continue
            }
            
            guessed[index] = true
            found := false
            
            for i := 0; i < len(word); i += 1 {
                if word[i] == guess {
                    word_so_far[i] = guess
                    found = true
                }
            }

            if found {
                fmt.println("Good guess!\n")
            } else {
                attempts += 1
                fmt.println("Incorrect guess.\n")
            }

            // Check win
            won := true
            for i := 0; i < len(word); i += 1 {
                if word_so_far[i] == '_' {
                    won = false
                    break
                }
            }

            if won {
                fmt.println("Congratulations! You won! The word was:", word)
                return
            }
        }
    }
    
    fmt.println("Game over! The word was:", word)
}