# Ethereum PoS Private Chain Genesis Setup

This directory contains files and scripts related to the genesis block and validator keys for the Ethereum Proof of Stake (PoS) private chain setup.

## Contents

- **deposit_contract/**: Contains the Solidity contract for the deposit.
  - **DepositContract.sol**: The Solidity code for the Deposit Contract, which is essential for validator registration.

- **validator_keys/**: Contains the keystore for validator keys.
  - **keystore.json**: The keystore information for the validator keys, which is used to manage validator identities securely.

- **genesis.ssz**: The serialized genesis state for the Ethereum network, which defines the initial state of the blockchain.

- **generate_genesis.sh**: A script used to generate the `genesis.ssz` file. This script automates the process of creating the genesis state based on the provided configurations and contracts.

## Usage

To generate the genesis state, run the `generate_genesis.sh` script. Ensure that all necessary configurations and contracts are in place before executing the script.

This setup is crucial for initializing the Ethereum PoS private chain and ensuring that validators can participate in the network.