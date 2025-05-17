#!/bin/bash

# This script initializes the Lighthouse environment and sets up necessary configurations.

# Set the path for the Lighthouse configuration files
LIGHTHOUSE_CONFIG_DIR="./lighthouse"

# Create necessary directories
mkdir -p $LIGHTHOUSE_CONFIG_DIR

# Copy the default configuration files
cp $LIGHTHOUSE_CONFIG_DIR/beacon-node-config.toml $LIGHTHOUSE_CONFIG_DIR/
cp $LIGHTHOUSE_CONFIG_DIR/validator-config.toml $LIGHTHOUSE_CONFIG_DIR/

# Initialize Lighthouse
lighthouse init --network mainnet

# Print completion message
echo "Lighthouse environment initialized successfully."