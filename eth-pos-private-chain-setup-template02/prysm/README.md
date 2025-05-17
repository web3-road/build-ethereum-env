# Prysm Client Setup for Ethereum PoS Private Chain

This directory contains the components related to the Prysm client, which is essential for participating in the Ethereum Proof of Stake (PoS) network. Below are the key components included in this setup:

## Directory Structure

- **deposit-cli**: 
  - This folder includes the command-line interface for handling deposits to the beacon chain. It allows users to interact with the deposit contract and manage validator registrations.

- **beacon-chain**: 
  - This folder contains the implementation of the beacon chain. It is responsible for managing the consensus and state of the PoS network.

- **validator**: 
  - This folder includes the validator client, which is used to participate in the PoS network by proposing and attesting to blocks.

## Getting Started

1. **Installation**: 
   - Ensure you have Go installed on your machine. Follow the official Prysm installation guide to set up the necessary dependencies.

2. **Configuration**: 
   - Before running the Prysm components, configure the settings in the `config.yaml` file located in the `genesis` directory. This file contains important parameters for your private chain setup.

3. **Running the Components**:
   - Start the beacon chain by navigating to the `beacon-chain` directory and executing the appropriate command.
   - Use the `deposit-cli` to handle deposits and register your validators.
   - Launch the validator client from the `validator` directory to start participating in the network.

## Additional Resources

- Refer to the official Prysm documentation for detailed instructions on each component.
- Check the `docs/setup_guide.md` for a comprehensive setup guide tailored for this project.

By following the instructions above, you will be able to set up and run the Prysm client for your Ethereum PoS private chain successfully.