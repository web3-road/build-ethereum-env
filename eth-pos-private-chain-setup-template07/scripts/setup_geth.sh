#!/bin/bash

# This script sets up the Geth client for the Ethereum PoS private chain.

# Update and install necessary packages
sudo apt-get update
sudo apt-get install -y software-properties-common
sudo add-apt-repository -y ppa:ethereum/ethereum
sudo apt-get update
sudo apt-get install -y geth

# Create data directory for Geth
mkdir -p ~/eth-pos-private-chain/data

# Initialize Geth with the genesis block
geth init ../config/genesis.json --datadir ~/eth-pos-private-chain/data

# Start Geth client
geth --datadir ~/eth-pos-private-chain/data --http --http.port 8545 --http.addr "0.0.0.0" --http.corsdomain "*" --syncmode "full" --allow-insecure-unlock --rpcapi "eth,net,web3,personal" &

echo "Geth client has been set up and is running."