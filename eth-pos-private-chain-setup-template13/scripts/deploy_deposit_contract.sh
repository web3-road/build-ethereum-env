#!/bin/bash

# This script deploys the Ethereum deposit contract to the specified network.

# Load environment variables
source ../geth/.env

# Compile the deposit contract
echo "Compiling the deposit contract..."
solc --optimize --bin --abi ../genesis/deposit_contract.sol -o ../genesis/

# Deploy the deposit contract
echo "Deploying the deposit contract..."
geth attach http://127.0.0.1:8545 <<EOF
var fs = require('fs');
var abi = JSON.parse(fs.readFileSync('../genesis/deposit_contract.abi', 'utf8'));
var bytecode = '0x' + fs.readFileSync('../genesis/deposit_contract.bin', 'utf8');
var contract = eth.contract(abi);
var deployTx = contract.new({data: bytecode, from: eth.coinbase, gas: 3000000});
console.log('Deposit contract deployed at address: ' + deployTx);
EOF

echo "Deposit contract deployment complete."