#!/bin/bash

# This script generates the genesis file for the Prysm client.

# Set the path to the Prysm configuration file
CONFIG_FILE="../config/config.yaml"

# Set the output path for the genesis file
OUTPUT_GENESIS_JSON="../genesis/genesis.json"
OUTPUT_GENESIS_SSZ="../genesis/genesis.ssz"

# Generate the genesis file using the Prysm command
prysm-genesis --config $CONFIG_FILE --output $OUTPUT_GENESIS_JSON --output-ssz $OUTPUT_GENESIS_SSZ

echo "Genesis file generated at $OUTPUT_GENESIS_JSON and $OUTPUT_GENESIS_SSZ"