#!/bin/bash

# This script sets up the Lighthouse client for the Ethereum PoS private chain.

# Update the system and install necessary dependencies
sudo apt update
sudo apt install -y build-essential git

# Clone the Lighthouse repository
git clone https://github.com/sigp/lighthouse.git

# Navigate to the Lighthouse directory
cd lighthouse

# Build the Lighthouse client
make

# Move the Lighthouse binary to a directory in PATH
sudo mv target/release/lighthouse /usr/local/bin/

# Create a directory for Lighthouse configuration
mkdir -p ~/lighthouse/config

# Copy the default configuration file
cp configs/lighthouse_config.toml ~/lighthouse/config/

# Print completion message
echo "Lighthouse client setup completed. Configuration file is located at ~/lighthouse/config/lighthouse_config.toml"