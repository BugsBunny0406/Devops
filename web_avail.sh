#!/bin/bash

# Function to check website availability
check_website() {
    website_url="$1"
    http_status_code=$(curl -s -o /dev/null -w "%{http_code}" "$website_url")

    if [ "$http_status_code" -eq 200 ]; then
        echo "Website is available: $website_url (HTTP Status Code: $http_status_code)"
    else
        echo "Website is not available: $website_url (HTTP Status Code: $http_status_code)"
    fi
}

# Prompt the user to enter a website URL
read -p "Enter a website URL to check: " user_input

# Call the function to check the website availability
check_website "$user_input"

