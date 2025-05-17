# Deposit Contract Documentation

This directory contains the deposit contract used for staking in the Ethereum Proof of Stake (PoS) system. The deposit contract is a crucial component for validators to participate in the Ethereum 2.0 network.

## Overview

The deposit contract allows users to deposit Ether (ETH) to become a validator in the Ethereum PoS system. It is responsible for handling the staking process and ensuring that the deposited funds are locked until the validator exits.

## Files

- **DepositContract.sol**: This file contains the Solidity code for the deposit contract. It defines the contract's functionality, including deposit handling and withdrawal mechanisms.

- **scripts/deploy_contract.sh**: This script automates the deployment of the deposit contract to the Ethereum blockchain. It includes the necessary commands to compile the contract and deploy it to a specified network.

## Deployment Instructions

1. **Install Dependencies**: Ensure you have the required tools installed, such as Node.js, Truffle, or Hardhat, depending on your preferred development environment.

2. **Compile the Contract**: Use the appropriate command to compile the `DepositContract.sol` file. For example, if using Truffle, run:
   ```
   truffle compile
   ```

3. **Deploy the Contract**: Execute the deployment script to deploy the contract to the Ethereum network:
   ```
   ./scripts/deploy_contract.sh
   ```

4. **Verify Deployment**: After deployment, verify the contract address and ensure it is correctly registered on the network.

## Usage Guidelines

- Once deployed, validators can interact with the deposit contract to stake their ETH and participate in the PoS consensus.
- Ensure to keep track of the contract address for future interactions and withdrawals.

For further details on the Ethereum PoS system and validator setup, refer to the main project documentation.