import Foundation

/**
 * This program asks the user to guess a number
 * @author Yoma Ozoh
 * @version 1.0
 * @since 2026-09-28
 */
let targetNumber = Int.random(in: 1...6)
var guessCount = 0
var userGuess = 0

// welcome the user
print("Welcome to the Guessing Game!")
// tell user the game
print("You have to guess a number between 1 and 6.")

while userGuess != targetNumber {
    print("Enter your guess: ", terminator: "")

    guard let inputString = readLine()?.trimmingCharacters(in: .whitespacesAndNewlines) else {
        break
    }

    // Check if input is a valid integer
    guard let parsedGuess = Int(inputString) else {
        print("Invalid input. Please enter a whole number.")
        continue
    }

    userGuess = parsedGuess

    // Crash proofing: Check if input is within valid range
    if userGuess < 1 || userGuess > 6 {
        print("Please enter a number between 1 and 6.")
        continue
    }

    // Increment count only for valid guesses
    guessCount += 1

    if userGuess > targetNumber {
        print("Too high! Try again.")
    } else if userGuess < targetNumber {
        print("Too low! Try again.")
    }
}

print("Correct! You guessed the right number.")
print("It took you \(guessCount) guess(es) to get the right answer.")