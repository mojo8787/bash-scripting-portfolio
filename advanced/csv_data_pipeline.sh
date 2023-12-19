#!/bin/bash

# Automated CSV Data Pipeline

# URL for sample CSV file
URL="https://media.githubusercontent.com/media/datablist/sample-csv-files/main/files/organizations/organizations-100.csv"

OUTPUT_FILE="summary.txt"
DOWNLOADED_FILE="sample_data.csv"

# Download CSV file
echo "Downloading CSV file..."
wget -O "$DOWNLOADED_FILE" "$URL" || { echo "Failed to download file"; exit 1; }

# Processing CSV file
echo "Processing CSV file..."
# Example: Count the number of lines (rows) in the file
LINE_COUNT=$(wc -l < "$DOWNLOADED_FILE")
echo "Number of lines in CSV file: $LINE_COUNT" > "$OUTPUT_FILE"

# Summarizing and outputting results
echo "Results:" >> "$OUTPUT_FILE"
cut -d, -f1 "$DOWNLOADED_FILE" | sort | uniq -c >> "$OUTPUT_FILE"

# Cleanup
rm "$DOWNLOADED_FILE"

echo "Data processing complete. Results saved to $OUTPUT_FILE."


