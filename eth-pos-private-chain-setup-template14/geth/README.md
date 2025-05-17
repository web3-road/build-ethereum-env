# Geth Client Documentation

This README provides an overview of the Geth client setup for the Ethereum Proof of Stake (PoS) private chain.

## Overview

Geth (Go Ethereum) is the official Go implementation of the Ethereum protocol. It allows you to run a full Ethereum node, participate in the network, and interact with smart contracts.

## Installation

1. **Download Geth**: You can download the latest version of Geth from the official [Go Ethereum releases page](https://geth.ethereum.org/downloads/).
2. **Install Geth**: Follow the installation instructions for your operating system.

## Configuration

The Geth client requires a genesis configuration file to initialize the blockchain. The `genesis.json` file in this directory contains the necessary parameters for the private chain.

### Genesis Configuration

- The `genesis.json` file defines the initial state of the blockchain, including the block parameters and the initial accounts.

## Initialization

To initialize the Geth client with the specified genesis configuration, run the following command:

```bash
bash scripts/init_geth.sh
```

This script will set up the Geth data directory and create the necessary blockchain files.

## Running Geth

After initialization, you can start the Geth client using the following command:

```bash
geth --datadir <path_to_data_directory> --networkid <network_id> --http --http.port 8545 --allow-insecure-unlock
```

Replace `<path_to_data_directory>` with the path to your Geth data directory and `<network_id>` with your desired network ID.

## Usage

Once Geth is running, you can interact with the Ethereum blockchain using the Geth JavaScript console or through JSON-RPC calls.

## Additional Resources

- [Geth Documentation](https://geth.ethereum.org/docs/)
- [Ethereum Developer Resources](https://ethereum.org/en/developers/docs/)