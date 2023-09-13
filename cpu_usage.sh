#!/bin/bash

# Define the interval in seconds for monitoring (e.g., 2 seconds)
interval=2

while true; do
    # Get CPU usage information using the 'top' command
    cpu_info=$(top -bn 1 | grep '%Cpu(s):' | awk '{print "User: "$2"%  System: "$4"%  Idle: "$8"%"}')

    # Print the CPU information
    echo "CPU Usage: $cpu_info"

    # Sleep for the defined interval
    sleep $interval
done
