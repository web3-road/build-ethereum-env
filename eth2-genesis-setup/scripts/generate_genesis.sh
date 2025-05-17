#!/bin/bash

# This script generates the genesis.ssz file for Ethereum 2.0 using the specified deposit contract and validator keys.

# Set variables
DEPOSIT_CONTRACT_ADDRESS="YOUR_DEPOSIT_CONTRACT_ADDRESS"
VALIDATOR_KEYS_DIR="../validator_keys"
OUTPUT_DIR="../prysm-genesis"
GENESIS_CONFIG="../config/genesis.json"

# Check if necessary files exist
if [ ! -f "$VALIDATOR_KEYS_DIR/deposit_data-12345.json" ]; then
  echo "Deposit data file not found!"
  exit 1
fi

if [ ! -f "$GENESIS_CONFIG" ]; then
  echo "Genesis configuration file not found!"
  exit 1
fi

# Generate the genesis.ssz file
echo "Generating genesis.ssz..."
prysm-genesis --deposit-contract="$DEPOSIT_CONTRACT_ADDRESS" --validator-keys="$VALIDATOR_KEYS_DIR" --output="$OUTPUT_DIR/genesis.ssz" --genesis-config="$GENESIS_CONFIG"

echo "Genesis.ssz file generated successfully at $OUTPUT_DIR/genesis.ssz"