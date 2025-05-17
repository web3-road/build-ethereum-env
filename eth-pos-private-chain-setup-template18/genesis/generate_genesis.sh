#!/bin/bash

# This script generates the genesis.ssz file for the Ethereum PoS private chain setup.

# Set the path to the Prysm or Lighthouse genesis generation tool
GENESIS_TOOL="path/to/genesis/tool"  # Update this path to the actual genesis generation tool

# Set the output path for the genesis.ssz file
OUTPUT_PATH="../genesis/genesis.ssz"

# Generate the genesis.ssz file
$GENESIS_TOOL generate --output $OUTPUT_PATH

echo "Genesis.ssz file has been generated at $OUTPUT_PATH"