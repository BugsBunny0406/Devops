#!/bin/bash

echo "System Information:"
echo "Hostname: $(hostname)"
echo "Operating System: $(cat /etc/os-release | grep "PRETTY_NAME" | cut -d'"' -f2)"
echo "Kernel Version: $(uname -r)"
