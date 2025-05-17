#!/bin/bash

# This script generates the genesis.ssz file for the Ethereum PoS private chain setup.

# Set the path to the deposit contract and validator keys
DEPOSIT_CONTRACT="deposit_contract.sol"
VALIDATOR_KEYS_DIR="validator_keys"

# Check if the deposit contract exists
if [ ! -f "$DEPOSIT_CONTRACT" ]; then
    echo "Deposit contract not found: $DEPOSIT_CONTRACT"
    exit 1
fi

# Check if the validator keys directory exists
if [ ! -d "$VALIDATOR_KEYS_DIR" ]; then
    echo "Validator keys directory not found: $VALIDATOR_KEYS_DIR"
    exit 1
fi

# Generate the genesis.ssz file using the deposit contract and validator keys
echo "Generating genesis.ssz..."
# Command to generate genesis.ssz (replace with actual command)
# For example: 
# ./path/to/eth2-genesis-tool --deposit-contract $DEPOSIT_CONTRACT --validator-keys $VALIDATOR_KEYS_DIR --output genesis.ssz

echo "Genesis.ssz generated successfully."