#!/bin/bash

# This script generates the genesis file for Lighthouse.

# Set the path to the genesis configuration
GENESIS_CONFIG="../genesis/genesis.json"

# Set the output path for the genesis.ssz file
OUTPUT_PATH="../genesis/genesis.ssz"

# Check if the genesis configuration file exists
if [ ! -f "$GENESIS_CONFIG" ]; then
    echo "Genesis configuration file not found at $GENESIS_CONFIG"
    exit 1
fi

# Generate the genesis.ssz file using Lighthouse
lighthouse genesis generate --config $GENESIS_CONFIG --output $OUTPUT_PATH

# Check if the genesis.ssz file was created successfully
if [ $? -eq 0 ]; then
    echo "Genesis file generated successfully at $OUTPUT_PATH"
else
    echo "Failed to generate the genesis file."
    exit 1
fi