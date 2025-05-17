#!/bin/bash

# This script automates the process of generating the genesis file for the Lighthouse client.

# Set the path to the Lighthouse configuration
LIGHTHOUSE_CONFIG_PATH="../config/testnet-spec.yaml"
GENESIS_OUTPUT_PATH="../config/genesis.ssz"

# Check if the Lighthouse binary is available
if ! command -v lighthouse &> /dev/null
then
    echo "Lighthouse binary could not be found. Please install Lighthouse."
    exit 1
fi

# Generate the genesis file using Lighthouse
lighthouse genesis new --config $LIGHTHOUSE_CONFIG_PATH --output $GENESIS_OUTPUT_PATH

# Check if the genesis file was created successfully
if [ $? -eq 0 ]; then
    echo "Genesis file generated successfully at $GENESIS_OUTPUT_PATH"
else
    echo "Failed to generate the genesis file."
    exit 1
fi