#!/bin/bash

# Function to count files in the current directory
count_files() {
    local count=$(ls -1 | wc -l)
    echo $count
}

target=$(count_files)

echo "Welcome to the Guessing Game!"
echo "Guess how many files are in the current directory:"

while true; do
    read guess

    if [[ $guess -lt $target ]]; then
        echo "Too low. Try again."
    elif [[ $guess -gt $target ]]; then
        echo "Too high. Try again."
    else
        echo "Congratulations! You guessed it right. There are $target files in the directory."
        break
    fi
done
