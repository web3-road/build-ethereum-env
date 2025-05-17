#!/bin/bash

# This script generates the genesis file for the Lighthouse client.

# Set the path to the Lighthouse configuration file
CONFIG_FILE="../config/config.toml"

# Set the output path for the genesis file
OUTPUT_GENESIS_FILE="../../genesis/genesis.ssz"

# Generate the genesis file using Lighthouse
lighthouse genesis new --config $CONFIG_FILE --output $OUTPUT_GENESIS_FILE

echo "Genesis file generated at: $OUTPUT_GENESIS_FILE"