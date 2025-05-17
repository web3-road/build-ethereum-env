#!/bin/bash

# This script deploys the DepositContract to the Ethereum network using Hardhat.

# Set the path to the Hardhat project
HARDHAT_PROJECT_PATH="../deposit-contract"

# Navigate to the Hardhat project directory
cd $HARDHAT_PROJECT_PATH

# Compile the contract
npx hardhat compile

# Deploy the contract
npx hardhat run scripts/deploy.js --network localhost

# Note: Ensure that the Hardhat network is running before executing this script.