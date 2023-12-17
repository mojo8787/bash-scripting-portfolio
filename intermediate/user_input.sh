#!/bin/bash
# This script asks for the user's name and age, then prints a personalized 
message.

# Ask for the user's name
echo "What is your name?"
read name

# Ask for the user's age
echo "How old are you?"
read age

# Calculate the year of birth
current_year=$(date +"%Y")
year_of_birth=$((current_year - age))

# Output the personalized message
echo "Hello, $name. You were born approximately in $year_of_birth."

