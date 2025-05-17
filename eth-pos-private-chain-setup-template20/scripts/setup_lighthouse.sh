#!/bin/bash

# This script automates the setup process for the Lighthouse client.

# Update the system and install necessary dependencies
sudo apt update
sudo apt install -y git build-essential

# Clone the Lighthouse repository
git clone https://github.com/sigp/lighthouse.git

# Navigate to the Lighthouse directory
cd lighthouse

# Build the Lighthouse client
cargo build --release

# Create a directory for Lighthouse data
mkdir -p ~/lighthouse/data

# Create a configuration file for Lighthouse
cat <<EOL > ~/lighthouse/config.yaml
# Lighthouse configuration
network:
  name: mainnet
  # Add other configuration options as needed
EOL

echo "Lighthouse setup completed. Configuration file created at ~/lighthouse/config.yaml."