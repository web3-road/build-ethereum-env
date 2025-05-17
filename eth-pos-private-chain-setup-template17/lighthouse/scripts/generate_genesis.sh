#!/bin/bash

# This script generates the genesis block for the Lighthouse client.

# Set the path to the genesis configuration files
GENESIS_JSON="../genesis/genesis.json"
GENESIS_SSZ="../genesis/genesis.ssz"
CONFIG_YAML="../genesis/config.yaml"

# Check if the genesis.json file exists
if [ ! -f "$GENESIS_JSON" ]; then
    echo "Error: $GENESIS_JSON not found!"
    exit 1
fi

# Generate the genesis block using Lighthouse
lighthouse genesis new --config $CONFIG_YAML --output $GENESIS_SSZ

# Check if the genesis block was generated successfully
if [ $? -eq 0 ]; then
    echo "Genesis block generated successfully: $GENESIS_SSZ"
else
    echo "Error generating genesis block."
    exit 1
fi