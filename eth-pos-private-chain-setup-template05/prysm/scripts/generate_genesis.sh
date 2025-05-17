#!/bin/bash

# This script generates the genesis block for the Prysm chain.

# Set the path to the genesis configuration file
GENESIS_CONFIG="../genesis/genesis.json"

# Set the output path for the genesis.ssz file
OUTPUT_PATH="../genesis/genesis.ssz"

# Generate the genesis block using Prysm's command
prysmctl genesis create --config $GENESIS_CONFIG --output $OUTPUT_PATH

echo "Genesis block generated at $OUTPUT_PATH"