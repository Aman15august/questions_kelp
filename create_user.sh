#!/bin/bash

#  No. of servers
servers=("host1" "host2" "host3" "host4" "host5" "host6" "host7" "host8" "host9" "host10")

# Input username and UID
read -p "Enter the username: " username
read -p "Enter the UID: " uid

# Loop list of servers 
for server in "${servers[@]}"; do
  echo "Creating user $username with UID $uid on $server"
  
  # SSH to run the user creation command on the remote server
  ssh "$server" "sudo useradd -m -u $uid $username"
  
  # Printing alert success or failure
  if [ $? -eq 0 ]; then
    echo "User $username created on $server"
  else
    echo "Failed to create user $username on $server"
  fi
done

