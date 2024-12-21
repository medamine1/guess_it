#!/bin/bash

# Function to prompt the user for their guess
guess_files() {
  local correct_number=$(ls -l | grep -v '^d' | wc -l)  # Get number of files in the current directory (excluding directories)
  local user_guess=0

  while [[ $user_guess -ne $correct_number ]]; do
    echo "Guess how many files are in the current directory:"
    read user_guess

    if [[ $user_guess -lt $correct_number ]]; then
      echo "Your guess is too low. Try again."
    elif [[ $user_guess -gt $correct_number ]]; then
      echo "Your guess is too high. Try again."
    else
      echo "Congratulations! You guessed the correct number of files."
    fi
  done
}

# Call the function to start the game
guess_files

