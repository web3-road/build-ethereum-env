#!/bin/bash

# This script generates the genesis block for the Lighthouse client.

# Set the path to the Lighthouse configuration file
CONFIG_FILE="../config/testnet-spec.yaml"

# Set the path to the deposits JSON file
DEPOSITS_FILE="../../genesis/deposits.json"

# Set the output path for the genesis.ssz file
OUTPUT_FILE="../../genesis/genesis.ssz"

# Generate the genesis block using Lighthouse's command
lighthouse genesis new --config $CONFIG_FILE --deposits $DEPOSITS_FILE --output $OUTPUT_FILE

echo "Genesis block generated at $OUTPUT_FILE"