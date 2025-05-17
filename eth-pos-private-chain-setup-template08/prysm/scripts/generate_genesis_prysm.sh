#!/bin/bash

# This script generates the genesis block for the Prysm client.

# Set the path to the Prysm configuration file
CONFIG_FILE="../config/config.yaml"

# Set the path to the deposits JSON file
DEPOSITS_FILE="../../genesis/deposits.json"

# Set the output path for the genesis.ssz file
OUTPUT_FILE="../../genesis/genesis.ssz"

# Generate the genesis block using the Prysm tool
prysm-genesis --config $CONFIG_FILE --deposits $DEPOSITS_FILE --output $OUTPUT_FILE

echo "Genesis block generated successfully at $OUTPUT_FILE"