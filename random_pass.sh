#!/bin/bash

# Define the length of the random password (you can change this)
password_length=12

# Generate a random password using openssl
random_password=$(openssl rand -base64 48 | cut -c1-$password_length)

# Print the random password
echo "Random Password: $random_password"
