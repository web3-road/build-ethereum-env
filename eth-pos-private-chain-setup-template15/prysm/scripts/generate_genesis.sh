#!/bin/bash

# This script automates the process of generating the genesis file for the Prysm client.

# Set the path to the Prysm configuration directory
CONFIG_DIR="./config"

# Set the output path for the genesis.ssz file
OUTPUT_GENESIS_FILE="$CONFIG_DIR/genesis.ssz"

# Check if the configuration file exists
if [ ! -f "$CONFIG_DIR/config.yaml" ]; then
    echo "Configuration file config.yaml not found in $CONFIG_DIR."
    exit 1
fi

# Generate the genesis file using the Prysm command
echo "Generating genesis file..."
prysmctl beacon genesis --config-file="$CONFIG_DIR/config.yaml" --output="$OUTPUT_GENESIS_FILE"

# Check if the genesis file was created successfully
if [ -f "$OUTPUT_GENESIS_FILE" ]; then
    echo "Genesis file generated successfully at $OUTPUT_GENESIS_FILE."
else
    echo "Failed to generate the genesis file."
    exit 1
fi