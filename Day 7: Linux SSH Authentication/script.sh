#!/bin/bash

# Declare associative array: server => user
declare -A servers=(
    ["stapp01"]="tony"
    ["stapp02"]="steve"
    ["stapp03"]="banner"
)

# Generate SSH key for thor if it doesn't exist
if [ ! -f "$HOME/.ssh/id_rsa" ]; then
    echo "Generating SSH key for thor..."
    ssh-keygen -t rsa -N "" -f "$HOME/.ssh/id_rsa"
else
    echo "SSH key already exists. Skipping generation."
fi

# Copy public key to each app server
for server in "${!servers[@]}"; do
    user="${servers[$server]}"
    echo "Setting up password-less SSH for $user@$server..."
    ssh-copy-id -o StrictHostKeyChecking=no "$user@$server"
done

echo "✅ Password-less SSH setup completed for all app servers."
