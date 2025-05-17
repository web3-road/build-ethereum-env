#!/bin/bash

# This script generates the genesis block for the Ethereum PoS private chain.

# Set the path to the Lighthouse binary
LIGHTHOUSE_BIN="../bin/lighthouse"

# Set the output path for the genesis.ssz file
OUTPUT_PATH="../../genesis/genesis.ssz"

# Set the configuration file for the genesis block
CONFIG_FILE="../../config/beacon-chain.yaml"

# Generate the genesis block
$LIGHTHOUSE_BIN genesis \
    --config $CONFIG_FILE \
    --output $OUTPUT_PATH

echo "Genesis block generated at $OUTPUT_PATH"