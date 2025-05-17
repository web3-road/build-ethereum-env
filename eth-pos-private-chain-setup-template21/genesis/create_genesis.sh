#!/bin/bash

# This script creates the genesis block for the Ethereum PoS private chain.

# Set the path to the genesis configuration file
GENESIS_CONFIG="genesis.json"

# Set the output file for the genesis block
OUTPUT_FILE="genesis.ssz"

# Check if the genesis configuration file exists
if [ ! -f "$GENESIS_CONFIG" ]; then
    echo "Genesis configuration file not found: $GENESIS_CONFIG"
    exit 1
fi

# Generate the genesis block using the specified configuration
echo "Creating genesis block..."
geth init --datadir ./data $GENESIS_CONFIG

# Serialize the genesis state to the output file
echo "Serializing genesis state to $OUTPUT_FILE..."
geth export --datadir ./data --output $OUTPUT_FILE

echo "Genesis block created successfully: $OUTPUT_FILE"