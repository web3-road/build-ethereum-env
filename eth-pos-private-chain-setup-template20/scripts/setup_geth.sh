#!/bin/bash

# This script automates the setup process for the Geth execution layer.

# Update package list and install Geth
echo "Updating package list..."
sudo apt-get update

echo "Installing Geth..."
sudo apt-get install -y software-properties-common
sudo add-apt-repository -y ppa:ethereum/ethereum
sudo apt-get update
sudo apt-get install -y geth

# Create data directory for Geth
DATA_DIR="./geth-data"
if [ ! -d "$DATA_DIR" ]; then
  echo "Creating data directory at $DATA_DIR..."
  mkdir -p "$DATA_DIR"
fi

# Initialize Geth with the provided genesis file
echo "Initializing Geth with genesis file..."
geth init ../config/geth-genesis.json --datadir "$DATA_DIR"

# Start Geth
echo "Starting Geth..."
geth --datadir "$DATA_DIR" --http --http.addr "0.0.0.0" --http.port "8545" --http.api "eth,net,web3,personal" --allow-insecure-unlock --mine --miner.threads=1 &

echo "Geth setup completed. You can now interact with the Geth node."