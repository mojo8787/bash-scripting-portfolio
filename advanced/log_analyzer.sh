#!/bin/bash

# Log File Analyzer
# Analyzes log files for specific patterns and reports findings.

log_file="/path/to/logfile.log"
error_pattern="ERROR"
warning_pattern="WARNING"

echo "Analyzing log file: $log_file"

# Count occurrences of error and warning patterns
error_count=$(grep -c $error_pattern $log_file)
warning_count=$(grep -c $warning_pattern $log_file)

echo "Total Errors: $error_count"
echo "Total Warnings: $warning_count"


