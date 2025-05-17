#!/bin/bash

# This script sets up the Prysm client for the Ethereum PoS private chain.

# Update package list and install necessary dependencies
sudo apt-get update
sudo apt-get install -y git wget

# Clone the Prysm repository
git clone https://github.com/prysmaticlabs/prysm.git

# Navigate to the Prysm directory
cd prysm

# Build the Prysm binaries
make build

# Move the binaries to a directory in PATH
sudo mv ./build/* /usr/local/bin/

# Copy the Prysm configuration file
cp ../configs/prysm_config.yaml .

# Create a directory for validator keys if it doesn't exist
mkdir -p ../validator-keys

# Inform the user about the setup completion
echo "Prysm client setup completed. Please ensure your validator keys are in the 'validator-keys' directory."