#!/bin/bash

# This script generates the genesis block for the Ethereum PoS private chain setup.

# Set the path to the Lighthouse genesis tool
LIGHTHOUSE_GENESIS_TOOL="./lighthouse/genesis"

# Set the output path for the genesis.ssz file
OUTPUT_PATH="./genesis/genesis.ssz"

# Set the configuration file path
CONFIG_FILE="./genesis/config.yaml"

# Generate the genesis block
$LIGHTHOUSE_GENESIS_TOOL --config $CONFIG_FILE --output $OUTPUT_PATH

echo "Genesis block generated at $OUTPUT_PATH"