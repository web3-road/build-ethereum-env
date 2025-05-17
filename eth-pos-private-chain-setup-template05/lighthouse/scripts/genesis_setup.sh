#!/bin/bash

# This script sets up the genesis block for the Lighthouse chain.

# Define variables
GENESIS_CONFIG="../genesis/genesis.json"
GENESIS_SSZ="../genesis/genesis.ssz"
CONFIG_YAML="../genesis/config.yaml"

# Check if the genesis.json file exists
if [ ! -f "$GENESIS_CONFIG" ]; then
    echo "Genesis configuration file not found: $GENESIS_CONFIG"
    exit 1
fi

# Generate the genesis.ssz file from the genesis.json
echo "Generating genesis.ssz from genesis.json..."
lighthouse genesis build --config $GENESIS_CONFIG --output $GENESIS_SSZ

# Check if the genesis.ssz file was created successfully
if [ -f "$GENESIS_SSZ" ]; then
    echo "Genesis block setup completed successfully."
else
    echo "Failed to generate genesis.ssz."
    exit 1
fi

# Additional setup can be added here if needed
echo "You can now proceed with launching the Lighthouse beacon node."