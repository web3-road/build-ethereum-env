#!/bin/bash

# This script sets up the Geth client for the Ethereum PoS private chain.

# Update package list and install Geth
echo "Updating package list..."
sudo apt-get update

echo "Installing Geth..."
sudo apt-get install -y software-properties-common
sudo add-apt-repository -y ppa:ethereum/ethereum
sudo apt-get update
sudo apt-get install -y geth

# Create data directory for Geth
DATA_DIR="./data"
if [ ! -d "$DATA_DIR" ]; then
    echo "Creating data directory at $DATA_DIR..."
    mkdir -p $DATA_DIR
fi

# Initialize Geth with the genesis configuration
echo "Initializing Geth with genesis configuration..."
geth init ../configs/geth_genesis.json --datadir $DATA_DIR

# Start Geth node
echo "Starting Geth node..."
geth --datadir $DATA_DIR --http --http.port 8545 --http.addr "0.0.0.0" --http.corsdomain "*" --syncmode "full" &

echo "Geth setup complete. Node is running."