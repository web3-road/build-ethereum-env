#!/bin/bash

# This script initializes the Prysm environment and sets up necessary configurations.

# Set the path to the Prysm repository
PRYSM_PATH="$(pwd)/../.."

# Create necessary directories
mkdir -p "$PRYSM_PATH"/beacon-chain
mkdir -p "$PRYSM_PATH"/validator

# Copy configuration files
cp "$PRYSM_PATH"/beacon-chain-config.yaml "$PRYSM_PATH"/beacon-chain/config.yaml
cp "$PRYSM_PATH"/validator-config.yaml "$PRYSM_PATH"/validator/config.yaml

# Initialize the Prysm beacon chain
echo "Initializing Prysm beacon chain..."
prysm-beacon-chain --config="$PRYSM_PATH"/beacon-chain/config.yaml &

# Initialize the Prysm validator
echo "Initializing Prysm validator..."
prysm-validator --config="$PRYSM_PATH"/validator/config.yaml &

# Wait for processes to finish
wait

echo "Prysm environment initialized successfully."