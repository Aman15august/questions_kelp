#!/bin/bash

# Function to generate Fibonacci numbers less than or equal to n
generate_fibonacci() {
    local n=$1
    local a=0
    local b=1

    echo "Fibonacci numbers less than or equal to $n:"

    while [ $a -le $n ]; do
        echo -n "$a "

        #  the next Fibonacci number
        next=$((a + b))

       # updatinf the next number
        a=$b
        b=$next
    done

    echo  
}

# Input value of n
read -p "Enter a value of 'n': " n

# Calling the function
generate_fibonacci "$n"

