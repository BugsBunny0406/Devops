#!/bin/bash

directory="/home/kashish/Downloads"
disk_usage=$(du -sh "Downloads")

echo "Disk space usage for $directory: $disk_usage"
