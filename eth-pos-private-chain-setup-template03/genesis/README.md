# Ethereum PoS Private Chain Genesis Setup

This directory contains the necessary files and documentation for setting up the genesis block of an Ethereum Proof of Stake (PoS) private chain.

## Contents

- **deposit_contract.sol**: This file contains the Solidity code for the deposit contract, which is essential for handling deposits made by validators in the Ethereum PoS network.

- **genesis.ssz**: This file is the serialized representation of the genesis block. It contains the initial state of the blockchain, including the configuration of the network and the initial set of validators.

- **genesis.json**: This file provides the JSON configuration for the genesis block. It specifies important parameters such as the initial validators, chain ID, and other settings necessary for the blockchain to function correctly.

## Usage

To set up the genesis block for your Ethereum PoS private chain, follow these steps:

1. **Deploy the Deposit Contract**: Use the `deposit_contract.sol` file to deploy the deposit contract on your Ethereum network. This contract is crucial for validators to make their deposits.

2. **Generate the Genesis Block**: Utilize the `genesis.ssz` and `genesis.json` files to configure and initialize your blockchain. Ensure that the parameters in `genesis.json` match your network requirements.

3. **Run the Scripts**: Use the provided scripts in the `scripts` directory to automate the generation of the genesis block and the setup of validators.

For more detailed instructions, refer to the README files in the respective directories for Prysm and Lighthouse tools.