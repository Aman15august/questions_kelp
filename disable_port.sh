#!/bin/bash

# Function to list open ports
list_open_ports() {
    echo "Open ports:"
    sudo netstat -tuln
}

# Function to disable a specific port
disable_port() {
    local port=$1
    echo "Disabling port $port..."
    sudo iptables -A INPUT -p tcp --dport $port -j DROP
    echo "Port $port has been disabled."
}

# Main menu
while true; do
    echo -e "\nSelect an option:"
    echo "1. List open ports"
    echo "2. Disable a port"
    echo "3. Exit"
    read -p "Enter your choice: " choice

    case $choice in
        1)
            list_open_ports
            ;;
        2)
            read -p "Enter the port to disable: " port_to_disable
            disable_port $port_to_disable
            ;;
        3)
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid option. Please try again."
            ;;
    esac
done

