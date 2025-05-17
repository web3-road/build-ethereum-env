#!/bin/bash

# This script automates the full setup process for the Ethereum PoS private chain.

# Step 1: Create the genesis block
echo "Creating the genesis block..."
cd ../genesis
chmod +x create_genesis.sh
./create_genesis.sh

# Step 2: Start Geth
echo "Starting Geth..."
cd ../go-ethereum
chmod +x start-geth.sh
./start-geth.sh &

# Step 3: Start Prysm
echo "Starting Prysm..."
cd ../prysm/scripts
chmod +x start-prysm.sh
./start-prysm.sh &

# Step 4: Start Lighthouse
echo "Starting Lighthouse..."
cd ../../lighthouse/scripts
chmod +x start-lighthouse.sh
./start-lighthouse.sh &

echo "Full setup completed. All components are starting."