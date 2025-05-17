#!/bin/bash

# This script generates the genesis block for the Ethereum PoS private chain.

# Set the path to the genesis configuration files
GENESIS_DIR="../genesis"

# Generate the genesis.ssz file using the provided genesis.json
echo "Generating genesis.ssz from genesis.json..."
lighthouse genesis build --config $GENESIS_DIR/config.yaml --output $GENESIS_DIR/genesis.ssz

# Check if the genesis.ssz file was created successfully
if [ -f "$GENESIS_DIR/genesis.ssz" ]; then
    echo "Genesis block generated successfully: $GENESIS_DIR/genesis.ssz"
else
    echo "Failed to generate genesis block."
    exit 1
fi

# Optionally, you can add commands to generate the deposit contract or other related tasks here.