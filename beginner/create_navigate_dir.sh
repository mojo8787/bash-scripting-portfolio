#!/bin/bash
# This script creates a new directory and navigates into it
echo "Enter directory name to create and navigate:"
read dir_name
mkdir "$dir_name"
cd "$dir_name"
echo "You are now in $(pwd)"

