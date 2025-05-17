#!/bin/bash

# This script is used to start the Prysm client for the Ethereum 2.0 network.

# Set the path to the Prysm binary
PRYSM_BIN="./prysm"

# Load configuration from config.yaml
CONFIG_FILE="./config.yaml"

# Check if the Prysm binary exists
if [ ! -f "$PRYSM_BIN" ]; then
    echo "Prysm binary not found at $PRYSM_BIN"
    exit 1
fi

# Start the Prysm beacon node
echo "Starting Prysm beacon node..."
$PRYSM_BIN beacon-chain --config-file="$CONFIG_FILE" &

# Start the Prysm validator
echo "Starting Prysm validator..."
$PRYSM_BIN validator --config-file="$CONFIG_FILE" &

# Wait for the processes to finish
wait
