#!/bin/bash

# This script deploys the DepositContract to the Ethereum blockchain.

# Load environment variables
source .env

# Compile the contract
echo "Compiling DepositContract..."
npx hardhat compile

# Deploy the contract
echo "Deploying DepositContract..."
npx hardhat run scripts/deploy.js --network <network_name>

echo "DepositContract deployed successfully."