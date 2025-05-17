#!/bin/bash

# This script generates the genesis file for the Lighthouse setup.

# Set the path to the deposit data JSON file
DEPOSIT_DATA_FILE="../genesis/deposit_data.json"

# Set the path to the output genesis.ssz file
OUTPUT_GENESIS_FILE="../genesis/genesis.ssz"

# Set the path to the configuration YAML file
CONFIG_FILE="../genesis/config.yaml"

# Generate the genesis file using Lighthouse
lighthouse genesis new --deposit-data-file $DEPOSIT_DATA_FILE --output-file $OUTPUT_GENESIS_FILE --config $CONFIG_FILE

echo "Genesis file generated at $OUTPUT_GENESIS_FILE"