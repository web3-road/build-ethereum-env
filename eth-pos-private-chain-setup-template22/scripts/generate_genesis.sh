#!/bin/bash

# This script generates the genesis block for the Ethereum PoS private chain setup.

# Set variables for paths
GENESIS_DIR="../genesis"
DEPOSIT_DATA_FILE="$GENESIS_DIR/deposit_data.json"
GENESIS_SSZ_FILE="$GENESIS_DIR/genesis.ssz"
GETH_GENESIS_FILE="../config/geth-genesis.json"

# Check if deposit data file exists
if [ ! -f "$DEPOSIT_DATA_FILE" ]; then
    echo "Deposit data file not found: $DEPOSIT_DATA_FILE"
    exit 1
fi

# Generate the genesis.ssz file using the deposit data
echo "Generating genesis.ssz from deposit data..."
# Command to generate genesis.ssz (replace with actual command)
# Example: ssz-tool generate --input "$DEPOSIT_DATA_FILE" --output "$GENESIS_SSZ_FILE"

# Check if the genesis.ssz file was created successfully
if [ -f "$GENESIS_SSZ_FILE" ]; then
    echo "Genesis block generated successfully: $GENESIS_SSZ_FILE"
else
    echo "Failed to generate genesis block."
    exit 1
fi

# Optionally, you can also update the Geth genesis configuration
echo "Updating Geth genesis configuration..."
# Command to update Geth genesis (replace with actual command)
# Example: geth init "$GETH_GENESIS_FILE"

echo "Genesis generation script completed."