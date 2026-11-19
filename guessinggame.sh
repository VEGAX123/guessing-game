#!/bin/bash

# Function to count files in the current directory
count_files() {
    find . -maxdepth 1 -type f | wc -l
}

# Get the correct number of files
correct_number=$(count_files)

echo "Welcome to the Guessing Game!"
echo "How many files are in the current directory?"

# Keep asking until the user guesses correctly
while true
do
    read -r -p "Enter your guess: " guess

    if ! [[ "$guess" =~ ^[0-9]+$ ]]
    then
        echo "Please enter a valid non-negative number."
    elif [ "$guess" -lt "$correct_number" ]
    then
        echo "Your guess is too low. Try again!"
    elif [ "$guess" -gt "$correct_number" ]
    then
        echo "Your guess is too high. Try again!"
    else
        echo "Congratulations! You guessed correctly!"
        echo "There are $correct_number files in this directory."
        break
    fi
done
