#!/bin/bash

# This script generates the genesis file for the Prysm beacon chain.

# Set the path to the genesis configuration file
GENESIS_CONFIG="../genesis/genesis.json"

# Set the output path for the genesis.ssz file
OUTPUT_PATH="../genesis/genesis.ssz"

# Check if the genesis configuration file exists
if [ ! -f "$GENESIS_CONFIG" ]; then
    echo "Genesis configuration file not found at $GENESIS_CONFIG"
    exit 1
fi

# Generate the genesis.ssz file using the Prysm tool
echo "Generating genesis.ssz from $GENESIS_CONFIG..."
prysm-genesis --config-file="$GENESIS_CONFIG" --output="$OUTPUT_PATH"

# Check if the genesis.ssz file was created successfully
if [ -f "$OUTPUT_PATH" ]; then
    echo "Genesis.ssz generated successfully at $OUTPUT_PATH"
else
    echo "Failed to generate genesis.ssz"
    exit 1
fi