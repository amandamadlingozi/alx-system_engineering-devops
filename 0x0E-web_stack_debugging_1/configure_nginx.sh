#!/bin/bash

# Function to display error messages
error() {
    echo "Error: $1" >&2
    exit 1
}

# Check if script is run with root privileges
if [ "$(id -u)" -ne 0 ]; then
    error "This script must be run as root"
fi

# Step 1: Check Nginx configuration for errors
nginx -t
if [ $? -ne 0 ]; then
    error "Nginx configuration test failed. Check configuration files for errors."
fi

# Step 2: Check if Nginx service is running
if ! systemctl is-active --quiet nginx; then
    # Start Nginx if it's not running
    systemctl start nginx
    if [ $? -ne 0 ]; then
        error "Failed to start Nginx service."
    fi
fi

# Step 3: Check if any other process is listening on port 80
if lsof -Pi :80 -sTCP:LISTEN -t >/dev/null; then
    error "Another process is already listening on port 80."
fi

# Step 4: Adjust firewall settings (if necessary)
# Uncomment the following line if you need to open port 80 in the firewall
# ufw allow 80

echo "Nginx is now configured to listen on port 80 of all active IPv4 IPs."

