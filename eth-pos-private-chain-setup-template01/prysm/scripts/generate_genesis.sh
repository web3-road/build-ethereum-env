#!/bin/bash

# This script generates the genesis file for the Prysm setup.

# Set the path to the deposit data JSON file
DEPOSIT_DATA_FILE="../genesis/deposit_data.json"

# Set the output path for the genesis.ssz file
OUTPUT_GENESIS_FILE="../genesis/genesis.ssz"

# Generate the genesis file using the Prysm command
prysm_genesis --deposit-data-file="$DEPOSIT_DATA_FILE" --output="$OUTPUT_GENESIS_FILE"

echo "Genesis file generated at $OUTPUT_GENESIS_FILE"