#!/bin/bash

# This script sets up the Prysm client for the Ethereum PoS private chain.

# Define variables
PRYSM_DIR="../prysm"
GENESIS_FILE="../genesis/genesis.ssz"
VALIDATOR_KEYS_DIR="../validator_keys"

# Install Prysm dependencies
echo "Installing Prysm dependencies..."
sudo apt-get update
sudo apt-get install -y golang-go

# Clone Prysm repository
if [ ! -d "$PRYSM_DIR" ]; then
    echo "Cloning Prysm repository..."
    git clone https://github.com/prysmaticlabs/prysm.git $PRYSM_DIR
fi

# Build Prysm
echo "Building Prysm..."
cd $PRYSM_DIR
make build

# Set up the beacon chain
echo "Setting up the Prysm beacon chain..."
./beacon-chain --genesis-file=$GENESIS_FILE &

# Set up the validator client
echo "Setting up the Prysm validator client..."
./validator --beacon-rpc-provider="http://localhost:4000" --validator-keys-dir=$VALIDATOR_KEYS_DIR &

echo "Prysm client setup complete."