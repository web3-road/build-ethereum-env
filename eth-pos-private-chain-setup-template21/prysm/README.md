# Prysm Ethereum PoS Private Chain Setup

This directory contains the necessary files and instructions to set up and run the Prysm beacon node and validator for an Ethereum Proof of Stake (PoS) private chain.

## Overview

Prysm is a client for the Ethereum 2.0 network that allows you to run a beacon node and validator. This setup is essential for participating in the Ethereum PoS network and managing your own private chain.

## Configuration

The configuration for the Prysm beacon node can be found in the `config.yaml` file. This file contains various settings, including network parameters and data directories. Make sure to review and modify it according to your requirements.

## Running Prysm

To start the Prysm beacon node and validator, you can use the provided script:

```bash
./scripts/start-prysm.sh
```

This script will initialize and run the Prysm client with the specified configuration.

## Additional Resources

For more detailed information on using Prysm, you can refer to the official [Prysm documentation](https://docs.prylabs.network/). This resource provides comprehensive guidance on installation, configuration, and troubleshooting.

## Important Notes

- Ensure that you have all the necessary dependencies installed before running the scripts.
- Review the `README.md` files in the other directories (Lighthouse, Genesis, Geth) for a complete understanding of the entire Ethereum PoS private chain setup.