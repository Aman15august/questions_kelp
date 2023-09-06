#Write a bash script to print the following system information.
# Currently logged users
# Your shell directory
# Home directory
# OS name & version
# Current working directory
# Number of users logged in
# Show all available shells in your system
# Hard disk information
# CPU information
# Memory information
# File system information
#• Currently running process

#!/bin/bash

echo "Currently logged users:"
who

echo -e "\nYour shell directory:"
echo $SHELL

echo -e "\nHome directory:"
echo $HOME

echo -e "\nOS name & version:"
lsb_release -a

echo -e "\nCurrent working directory:"
pwd

echo -e "\nNumber of users logged in:"
who | wc -l

echo -e "\nAvailable shells in your system:"
cat /etc/shells

echo -e "\nHard disk information:"
df -h

echo -e "\nCPU information:"
lscpu

echo -e "\nMemory information:"
free -h

echo -e "\nFile system information:"
df -T

echo -e "\nCurrently running processes:"
ps aux

