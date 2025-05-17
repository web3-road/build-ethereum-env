#!/bin/bash

# This script generates the genesis block for the Ethereum PoS private chain.

# Set the path to the deposit contract
DEPOSIT_CONTRACT_PATH="../genesis/deposit_contract.sol"

# Set the output path for the genesis.ssz file
OUTPUT_PATH="../genesis/genesis.ssz"

# Set the configuration file for the beacon chain
BEACON_CHAIN_CONFIG="../config/beacon-chain.yaml"

# Generate the genesis block using the specified parameters
echo "Generating genesis block..."
lighthouse genesis new --deposit-contract $DEPOSIT_CONTRACT_PATH --output $OUTPUT_PATH --config $BEACON_CHAIN_CONFIG

echo "Genesis block generated at $OUTPUT_PATH"