#!/bin/bash

# Define the URL of the website
URL="http://quotes.toscrape.com/page/1/"

# Use curl to download the web page
web_content=$(curl -s "$URL")

# Extract quotes from the web page
quotes=$(echo "$web_content" | grep -o '<span class="text">.*</span>')

# Count occurrences of the word "life" in the quotes
count=$(echo "$quotes" | grep -i -o "life" | wc -l)

# Display the result
echo "Occurrences of 'life' in quotes: $count"

