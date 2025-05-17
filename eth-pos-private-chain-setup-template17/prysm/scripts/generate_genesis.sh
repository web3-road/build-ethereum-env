#!/bin/bash

# This script generates the genesis block for the Prysm client.

# Set the path to the genesis configuration files
GENESIS_JSON="../genesis/genesis.json"
GENESIS_SSZ="../genesis/genesis.ssz"
CONFIG_YAML="../genesis/config.yaml"

# Check if the genesis.json file exists
if [ ! -f "$GENESIS_JSON" ]; then
    echo "Error: $GENESIS_JSON not found!"
    exit 1
fi

# Generate the genesis block using the Prysm tool
echo "Generating genesis block..."
prysm-genesis init --config-file="$CONFIG_YAML" --output="$GENESIS_SSZ"

# Check if the genesis block was generated successfully
if [ $? -eq 0 ]; then
    echo "Genesis block generated successfully: $GENESIS_SSZ"
else
    echo "Error: Failed to generate the genesis block."
    exit 1
fi