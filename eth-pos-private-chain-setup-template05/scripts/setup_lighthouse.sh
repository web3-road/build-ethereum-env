#!/bin/bash

# This script sets up the Lighthouse client for the Ethereum PoS private chain.

# Update and install necessary packages
sudo apt update
sudo apt install -y git build-essential

# Clone the Lighthouse repository
git clone https://github.com/sigp/lighthouse.git

# Navigate to the Lighthouse directory
cd lighthouse

# Build the Lighthouse client
cargo build --release

# Create necessary directories for Lighthouse
mkdir -p ~/lighthouse/beacon
mkdir -p ~/lighthouse/validator

# Copy the built binaries to the appropriate directories
cp target/release/lighthouse ~/lighthouse/beacon/
cp target/release/lighthouse-validator ~/lighthouse/validator/

# Print completion message
echo "Lighthouse client setup completed successfully."