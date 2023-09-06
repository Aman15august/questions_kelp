#!/bin/bash

# Function to check password strength
check_password_strength() {
    local password="$1"

    # minimum length
    if [ ${#password} -lt 8 ]; then
        echo "Password is too short. It must be at least 8 characters."
        return 1
    fi

    #  at least one lowercase letter
    if ! [[ "$password" =~ [a-z] ]]; then
        echo "Password must contain at least one lowercase letter."
        return 1
    fi

    # Checking for at least one uppercase letter
    if ! [[ "$password" =~ [A-Z] ]]; then
        echo "Password must contain at least one uppercase letter."
        return 1
    fi
    # Checking for at least one digit
    if ! [[ "$password" =~ [0-9] ]]; then
        echo "Password must contain at least one digit."
        return 1
    fi

    echo "Password is strong."
    return 0
}

# Input pass.
read -s -p "Enter a password: " password
echo

# Calling the function 
check_password_strength "$password"
