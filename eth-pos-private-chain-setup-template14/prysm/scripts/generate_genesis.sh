#!/bin/bash

# This script automates the process of generating the genesis file for the Prysm client.

# Set the path to the Prysm configuration file
CONFIG_FILE="../config/config.yaml"

# Set the output path for the genesis.ssz file
OUTPUT_FILE="../config/genesis.ssz"

# Generate the genesis file using the Prysm command
prysm-genesis --config $CONFIG_FILE --output $OUTPUT_FILE

echo "Genesis file generated at $OUTPUT_FILE"