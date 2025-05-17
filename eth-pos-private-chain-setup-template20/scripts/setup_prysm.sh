#!/bin/bash

# This script automates the setup process for the Prysm beacon chain and validator.

# Update and install necessary dependencies
sudo apt update
sudo apt install -y git make gcc

# Clone the Prysm repository
git clone https://github.com/prysmaticlabs/prysm.git
cd prysm

# Build the Prysm components
make build

# Create necessary directories for configuration and keys
mkdir -p ~/prysm/config
mkdir -p ~/prysm/validator-keys

# Copy example configuration files
cp config/example.yaml ~/prysm/config/beacon-chain.yaml
cp config/example-validator.yaml ~/prysm/config/validator.yaml

# Generate validator keys
./beacon-chain --create-validator --validator-keys-dir ~/prysm/validator-keys

# Print completion message
echo "Prysm setup completed. Configuration files and validator keys are located in ~/prysm/config and ~/prysm/validator-keys respectively."