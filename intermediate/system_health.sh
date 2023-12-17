#!/bin/bash

# This script checks and displays the system health including disk usage, 
memory usage, and CPU load.

echo "Checking System Health..."

# Disk Usage
echo "Disk Usage:"
df -h

# Memory Usage
echo "Memory Usage:"
free -m

# CPU Load
echo "CPU Load:"
uptime

# Optional: Check for any failed system services
echo "Checking for failed services:"
systemctl --failed

