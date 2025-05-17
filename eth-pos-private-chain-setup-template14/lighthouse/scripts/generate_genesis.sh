#!/bin/bash

# This script generates the genesis file for the Lighthouse client.

# Set the path to the Lighthouse configuration file
CONFIG_FILE="../config/testnet-spec.yaml"

# Set the output path for the genesis file
OUTPUT_FILE="../config/genesis.ssz"

# Generate the genesis file using Lighthouse's command
lighthouse genesis new --spec $CONFIG_FILE --output $OUTPUT_FILE

echo "Genesis file generated at $OUTPUT_FILE"