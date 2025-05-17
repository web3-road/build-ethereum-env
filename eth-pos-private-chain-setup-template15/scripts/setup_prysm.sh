#!/bin/bash

# This script automates the setup process for the Prysm client.

# Update the system and install necessary dependencies
sudo apt update
sudo apt install -y git wget curl

# Clone the Prysm repository
git clone https://github.com/prysmaticlabs/prysm.git

# Navigate to the Prysm directory
cd prysm

# Build the Prysm client
make build

# Create a directory for Prysm configuration
mkdir -p ~/.prysm

# Copy the provided config.yaml and genesis.ssz files
cp ../prysm/config/config.yaml ~/.prysm/config.yaml
cp ../prysm/config/genesis.ssz ~/.prysm/genesis.ssz

# Inform the user about the setup completion
echo "Prysm client setup is complete. Configuration files have been copied to ~/.prysm."