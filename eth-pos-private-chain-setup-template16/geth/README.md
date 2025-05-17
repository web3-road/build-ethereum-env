# Ethereum PoS Private Chain Setup - Geth

This directory contains the necessary files and documentation for setting up the Geth client in an Ethereum Proof of Stake (PoS) private chain environment.

## Overview

Geth (Go Ethereum) is one of the most popular Ethereum clients and is used to run a full Ethereum node. In this setup, Geth will be configured to work with the Prysm and Lighthouse clients to create a fully functional Ethereum PoS private chain.

## Files

- **genesis.json**: This file contains the genesis configuration for the Geth client. It defines the initial state of the blockchain, including the initial accounts, balances, and other parameters necessary for starting the blockchain.

## Setup Instructions

1. **Install Geth**: Ensure that you have Geth installed on your machine. You can download it from the official [Geth GitHub repository](https://github.com/ethereum/go-ethereum).

2. **Configure Genesis**: Modify the `genesis.json` file as needed to set up your private chain parameters.

3. **Initialize Geth**: Use the following command to initialize Geth with your genesis configuration:
   ```
   geth init path/to/genesis.json
   ```

4. **Start Geth**: After initialization, you can start the Geth client with the following command:
   ```
   geth --networkid <your_network_id> --http --http.port 8545 --allow-insecure-unlock --mine --miner.threads=1
   ```

5. **Connect to Prysm/Lighthouse**: Ensure that your Geth client is properly configured to connect with the Prysm and Lighthouse clients for consensus and block validation.

## Additional Resources

- Refer to the [Prysm documentation](https://docs.prylabs.network/) for details on setting up the Prysm client.
- Check the [Lighthouse documentation](https://lighthouse-book.sigmaprime.io/) for information on the Lighthouse client setup.

By following these instructions, you will be able to set up the Geth client as part of your Ethereum PoS private chain environment.