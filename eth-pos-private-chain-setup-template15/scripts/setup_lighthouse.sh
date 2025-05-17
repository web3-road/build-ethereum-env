#!/bin/bash

# This script automates the setup process for the Lighthouse client.

# Define variables
LIGHTHOUSE_DIR="./lighthouse"
CONFIG_DIR="$LIGHTHOUSE_DIR/config"
GENESIS_FILE="$CONFIG_DIR/genesis.ssz"
TESTNET_SPEC_FILE="$CONFIG_DIR/testnet-spec.yaml"

# Check if Lighthouse directory exists
if [ ! -d "$LIGHTHOUSE_DIR" ]; then
  echo "Lighthouse directory not found!"
  exit 1
fi

# Generate genesis file
if [ -f "$GENESIS_FILE" ]; then
  echo "Genesis file already exists at $GENESIS_FILE"
else
  echo "Generating genesis file..."
  bash "$LIGHTHOUSE_DIR/scripts/generate_genesis.sh"
fi

# Check if testnet spec file exists
if [ ! -f "$TESTNET_SPEC_FILE" ]; then
  echo "Testnet spec file not found at $TESTNET_SPEC_FILE"
  exit 1
fi

# Additional setup steps can be added here

echo "Lighthouse setup completed successfully."