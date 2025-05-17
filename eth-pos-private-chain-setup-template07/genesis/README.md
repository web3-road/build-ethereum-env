# README for Genesis Directory

This directory contains the necessary files and scripts to generate the genesis block for the Ethereum Proof of Stake (PoS) private chain setup.

## Files

- **generate_genesis.sh**: A script that automates the process of generating the genesis block for the Ethereum PoS private chain. It takes the necessary parameters and configurations to create a valid genesis block.

- **deposit_contract.json**: This file includes the ABI (Application Binary Interface) and bytecode for the deposit contract used in the Ethereum 2.0 network. It is essential for validator deposits and the functioning of the PoS mechanism.

- **validators/keystore.json**: This file contains the keystore information for the validators, including their private keys and public addresses. It is crucial for managing validator identities and securing their funds.

## Usage

To generate the genesis block, run the `generate_genesis.sh` script. Ensure that all necessary configurations are set in the corresponding configuration files. 

Make sure to review the contents of `deposit_contract.json` and `validators/keystore.json` to ensure that they are correctly set up for your network.

This setup is part of the broader Ethereum PoS private chain project, which includes components for both the Prysm and Lighthouse clients. For more information on those components, please refer to their respective directories.