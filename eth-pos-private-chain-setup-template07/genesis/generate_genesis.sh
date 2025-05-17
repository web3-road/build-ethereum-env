#!/bin/bash

# This script generates the genesis block for the Ethereum PoS private chain.

# Set the path to the deposit contract JSON file
DEPOSIT_CONTRACT_PATH="../genesis/deposit_contract.json"

# Set the path to the genesis configuration file
GENESIS_CONFIG_PATH="../config/genesis.json"

# Set the output path for the generated genesis block
OUTPUT_GENESIS_PATH="../config/genesis.ssz"

# Check if the deposit contract file exists
if [ ! -f "$DEPOSIT_CONTRACT_PATH" ]; then
    echo "Deposit contract file not found: $DEPOSIT_CONTRACT_PATH"
    exit 1
fi

# Check if the genesis configuration file exists
if [ ! -f "$GENESIS_CONFIG_PATH" ]; then
    echo "Genesis configuration file not found: $GENESIS_CONFIG_PATH"
    exit 1
fi

# Generate the genesis block using the deposit contract and genesis configuration
echo "Generating genesis block..."
# Command to generate the genesis block (replace with actual command)
# Example: eth2-genesis --deposit-contract $DEPOSIT_CONTRACT_PATH --genesis-config $GENESIS_CONFIG_PATH --output $OUTPUT_GENESIS_PATH

echo "Genesis block generated at: $OUTPUT_GENESIS_PATH"