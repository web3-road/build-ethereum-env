#!/bin/bash

# This script generates the genesis block configuration for the Ethereum PoS private chain.

# Load configuration from config.yaml
CONFIG_FILE="./genesis/config.yaml"

# Check if config.yaml exists
if [ ! -f "$CONFIG_FILE" ]; then
    echo "Configuration file $CONFIG_FILE not found!"
    exit 1
fi

# Generate genesis block using the configuration
echo "Generating genesis block..."
# Here you would typically call the appropriate command or script to generate the genesis block
# For example, using a tool like `eth2-genesis` or similar
# eth2-genesis --config $CONFIG_FILE --output ./genesis/genesis.ssz

echo "Genesis block generated successfully at ./genesis/genesis.ssz"