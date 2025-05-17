# Ethereum PoS Private Chain Genesis Setup

This directory contains files related to the genesis block and the deposit contract for the Ethereum Proof of Stake (PoS) private chain setup.

## Files Overview

- **deposit_contract.sol**: This file contains the Solidity code for the deposit contract, which is essential for the PoS mechanism.
  
- **deposit_data.json**: This file holds the deposit data in JSON format, which is used during the genesis block creation.

- **genesis.ssz**: This file is the serialized state of the genesis block in SSZ (Simple Serialize) format, which is required for initializing the blockchain.

- **config.yaml**: This file contains configuration settings for the genesis setup, including parameters for the deposit contract and other necessary configurations.

## Usage Instructions

1. **Deposit Contract**: Before generating the genesis block, ensure that the deposit contract is properly deployed on the network. Use the provided `deploy_deposit_contract.sh` script for deployment.

2. **Genesis Block Generation**: To generate the genesis block, run the `generate_genesis.sh` script. This will create the `genesis.ssz` file based on the configurations specified in `config.yaml` and the deposit data in `deposit_data.json`.

3. **Configuration**: Modify the `config.yaml` file as needed to adjust the parameters for your specific setup.

4. **Integration**: Ensure that the generated genesis block is compatible with the Geth and Prysm clients by following the instructions in their respective README files.

This setup is crucial for launching a private Ethereum PoS network and should be configured carefully to ensure proper functionality.