# Lighthouse Ethereum PoS Private Chain Setup

This directory contains the necessary files and instructions for setting up and running the Lighthouse beacon node as part of the Ethereum Proof of Stake (PoS) private chain.

## Overview

Lighthouse is a client for Ethereum 2.0 that implements the beacon chain and validator functionalities. This setup allows you to run a private Ethereum PoS network using Lighthouse, enabling you to test and develop on the Ethereum 2.0 protocol.

## Setup Instructions

1. **Configuration**: 
   - Edit the `config.yaml` file to set your desired parameters for the Lighthouse beacon node, including network settings and data directories.

2. **Start the Lighthouse Node**:
   - Use the provided script to start the Lighthouse beacon node and validator:
     ```bash
     ./scripts/start-lighthouse.sh
     ```

3. **Validator Registration**:
   - Ensure that you have registered your validators and have the necessary deposit data in the `validators` directory.

4. **Monitoring**:
   - Monitor the logs and outputs from the Lighthouse node to ensure it is running correctly and syncing with the network.

## Additional Resources

- For more detailed information on Lighthouse and its configuration options, refer to the official [Lighthouse documentation](https://lighthouse-book.sigmaprime.io/).
- Check the `scripts` directory for additional scripts that may assist in managing your Lighthouse setup.

## Troubleshooting

- If you encounter issues starting the Lighthouse node, check the configuration settings in `config.yaml` and ensure that all dependencies are installed.
- Review the logs for any error messages that can provide insight into what might be going wrong.

This README serves as a guide to help you get started with Lighthouse in your Ethereum PoS private chain setup.