#!/bin/bash

# Cleanup script for Ethereum PoS private chain setup

# Stop any running processes related to Geth, Prysm, and Lighthouse
pkill -f geth
pkill -f prysm
pkill -f lighthouse

# Remove data directories for Geth and beacon chain clients
rm -rf ./execution-chain/geth/private_chain
rm -rf ./beacon-chain/prysm/data
rm -rf ./beacon-chain/lighthouse/data

# Remove generated files
rm -f ./genesis/genesis.ssz
rm -f ./genesis/deposit_contract/DepositContract.bin

echo "Cleanup completed."