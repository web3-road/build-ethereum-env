#!/bin/bash

# This script sets up the environment for the Ethereum PoS private chain.

# Set environment variables
export CHAIN_DATA_DIR="./chain_data"
export DEPOSIT_CONTRACT_ADDRESS="0xYourDepositContractAddress"
export VALIDATOR_KEYS_DIR="./genesis/validator_keys"
export PRYSM_CONFIG="./beacon-chain/prysm/config.yaml"
export LIGHTHOUSE_CONFIG="./beacon-chain/lighthouse/config.yaml"
export GETH_CONFIG="./execution-chain/geth/config.toml"

# Create necessary directories
mkdir -p $CHAIN_DATA_DIR
mkdir -p $VALIDATOR_KEYS_DIR

# Copy example environment variables if .env does not exist
if [ ! -f .env ]; then
    cp .env.example .env
fi

# Generate genesis state
bash ./genesis/generate_genesis.sh

# Print setup completion message
echo "Ethereum PoS private chain environment setup completed."