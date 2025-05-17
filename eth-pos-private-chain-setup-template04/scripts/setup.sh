#!/bin/bash

# This script sets up the environment for the Ethereum PoS private chain.

# Update and install necessary packages
sudo apt-get update
sudo apt-get install -y build-essential git curl

# Clone Prysm and Lighthouse repositories
git clone https://github.com/prysmaticlabs/prysm.git ./prysm
git clone https://github.com/sigp/lighthouse.git ./lighthouse

# Navigate to Prysm directory and build
cd prysm
make install

# Navigate to Lighthouse directory and build
cd ../lighthouse
cargo build --release

# Set up directories for validators
mkdir -p ../validators/keys

# Generate mnemonic and save to config
echo "Generating mnemonic..."
mnemonic=$(openssl rand -hex 16)
echo $mnemonic > ../config/mnemonic.txt

# Generate genesis file using Prysm script
cd ../prysm/scripts
./generate_genesis.sh

# Generate genesis file using Lighthouse script
cd ../../lighthouse/scripts
./genesis_gen.sh

echo "Setup complete. Please check the configuration files and generated genesis files."