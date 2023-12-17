#!/bin/bash

# Network Health Check Script
# Pings predefined servers and checks port availability.

echo "Running Network Health Check..."

# Define a list of servers to ping
servers=("google.com" "yahoo.com" "bing.com")

# Ping each server and display the result
for server in "${servers[@]}"; do
    echo "Pinging $server..."
    ping -c 4 $server && echo "$server - Ping Successful" || echo "$server 
- Ping Failed"
    echo
done

# Check open ports on a specified server
port_check_server="google.com"
ports_to_check=(80 443)

echo "Checking open ports on $port_check_server..."

for port in "${ports_to_check[@]}"; do
    timeout 1 bash -c "cat < /dev/null > 
/dev/tcp/$port_check_server/$port"
    if [ $? -eq 0 ]; then
        echo "Port $port - Open"
    else
        echo "Port $port - Closed or Blocked"
    fi
done

echo "Network Health Check Completed."

