#!/bin/bash

# This script generates the genesis block for the Ethereum PoS private chain setup.

# Load configuration from the genesis-config.yaml
CONFIG_FILE="./genesis/genesis-config.yaml"

# Generate the genesis block using the specified configuration
echo "Generating genesis block..."
eth2-genesis --config $CONFIG_FILE --output ./go-ethereum/genesis.json

# Check if the genesis block was created successfully
if [ $? -eq 0 ]; then
    echo "Genesis block generated successfully at ./go-ethereum/genesis.json"
else
    echo "Error generating genesis block."
    exit 1
fi

# Additional steps can be added here if necessary, such as copying deposit contract files or validator keys.