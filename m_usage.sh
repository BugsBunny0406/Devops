#!/bin/bash

# Define the interval in seconds for monitoring (e.g., 2 seconds)
interval=2

while true; do
    # Get memory usage information using the 'free' command
    memory_info=$(free -m | awk 'NR==2{print "Total: "$2"MB Used: "$3"MB ("$3/$2*100"%) Free: "$4"MB ("$4/$2*100"%)"}')

    # Print the memory information
    echo "Memory Usage: $memory_info"

    # Sleep for the defined interval
    sleep $interval
done
