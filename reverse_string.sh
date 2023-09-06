#!/bin/bash

# Function to reverse a string
reverse_string() {
    local input="$1"
    local reversed=""

    for ((i=${#input}-1; i>=0; i--)); do
        reversed="${reversed}${input:$i:1}"
    done

    echo "$reversed"
}

# Input string
read -p "Enter a string: " input_string

# Calling the function to reverse the string
reversed_string=$(reverse_string "$input_string")

# Printing the reversed string
echo "Reversed string: $reversed_string"

