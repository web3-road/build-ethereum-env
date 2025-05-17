# Ethereum PoS Private Chain Genesis Directory

This directory contains essential files related to the genesis block of the Ethereum Proof of Stake (PoS) private chain setup.

## Files

- **deposit_data.json**: This file contains the deposit data required for the genesis block. It includes information about the validators and their respective deposits.

- **genesis.ssz**: This is a serialized file that represents the genesis state of the blockchain. It is generated based on the deposit data and other configurations.

- **README.md**: This documentation file provides an overview of the contents of the genesis directory and instructions on how to use the files within it.

## Usage

To generate the genesis block, ensure that the `deposit_data.json` is correctly populated with the necessary validator information. The `genesis.ssz` file can then be generated using the appropriate scripts or tools provided in the project.

For further instructions on setting up the Ethereum PoS private chain, refer to the main `README.md` file located in the root directory of the project.