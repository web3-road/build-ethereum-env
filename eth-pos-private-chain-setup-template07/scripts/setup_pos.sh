#!/bin/bash

# This script sets up the Proof of Stake (PoS) configuration for the Ethereum private chain.

# Check if required tools are installed
command -v geth >/dev/null 2>&1 || { echo >&2 "Geth is not installed. Please install it first."; exit 1; }
command -v prysm >/dev/null 2>&1 || { echo >&2 "Prysm is not installed. Please install it first."; exit 1; }
command -v lighthouse >/dev/null 2>&1 || { echo >&2 "Lighthouse is not installed. Please install it first."; exit 1; }

# Set up Geth
echo "Setting up Geth..."
bash ./scripts/setup_geth.sh

# Generate the genesis block
echo "Generating genesis block..."
bash ./genesis/generate_genesis.sh

# Start Prysm
echo "Starting Prysm..."
bash ./prysm/prysm.sh &

# Start Lighthouse
echo "Starting Lighthouse..."
bash ./lighthouse/lighthouse.sh &

echo "PoS setup completed. Please check the logs for any errors."