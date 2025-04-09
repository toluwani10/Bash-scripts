#! /bin/bash 
echo "What is your name:"
read name
# This script is to prompt user for their name and age
# Then tell them if they are eligible to vote 
echo "What is your age:"
read age
if [ "$age" -ge 18 ]; then
 echo "Welcome $name, you are eligible to vote"
 else
 echo "Sorry $name you are not eligible to vote" 
  fi
