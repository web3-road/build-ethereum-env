#!/bin/bash

# This script deploys the deposit contract to the Ethereum network.

# Set the path to the deposit contract
CONTRACT_PATH="../genesis/deposit_contract.sol"

# Compile the deposit contract
echo "Compiling the deposit contract..."
solc --bin --abi --optimize -o ../genesis/ $CONTRACT_PATH

# Get the contract name
CONTRACT_NAME="DepositContract"

# Set the Geth RPC URL
RPC_URL="http://127.0.0.1:8545"

# Deploy the contract
echo "Deploying the contract..."
geth attach $RPC_URL <<EOF
var fs = require('fs');
var abi = JSON.parse(fs.readFileSync('../genesis/${CONTRACT_NAME}.abi'));
var bin = '0x' + fs.readFileSync('../genesis/${CONTRACT_NAME}.bin');
var contract = eth.contract(abi);
var gasEstimate = web3.eth.estimateGas({data: bin});
var deployedContract = contract.new({from: eth.coinbase, data: bin, gas: gasEstimate});
console.log('Contract deployed at address: ' + deployedContract.address);
EOF

echo "Contract deployment script completed."