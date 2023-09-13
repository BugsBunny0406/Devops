#!/bin/bash

# Check if APT is available (Debian/Ubuntu)
if command -v apt-get &>/dev/null; then
    sudo apt-get update
    dpkg --get-selections > installed_packages.txt

# Check if YUM is available (Red Hat/CentOS)
elif command -v yum &>/dev/null; then
    rpm -qa > installed_packages.txt

else
    echo "Unsupported package manager (neither APT nor YUM found)."
    exit 1
fi

echo "List of installed packages saved to installed_packages.txt"
