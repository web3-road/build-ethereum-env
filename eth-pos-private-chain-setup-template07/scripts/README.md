# Ethereum PoS Private Chain Setup Scripts

This directory contains scripts that are essential for setting up and configuring the Ethereum Proof of Stake (PoS) private chain environment. Below is a brief overview of the scripts included in this directory:

## Scripts Overview

### 1. `setup_geth.sh`
This script is used to set up the Geth client for the Ethereum network. It automates the installation and configuration process, ensuring that the Geth client is ready to interact with the Ethereum blockchain.

### 2. `setup_pos.sh`
This script is designed to configure the Proof of Stake settings for the Ethereum network. It sets up the necessary parameters and configurations required for running a PoS environment.

## Usage Instructions

To use the scripts in this directory, follow these steps:

1. **Make the scripts executable**:
   Run the following command to ensure the scripts have the necessary permissions:
   ```bash
   chmod +x setup_geth.sh setup_pos.sh
   ```

2. **Run the setup scripts**:
   Execute the scripts in the following order:
   - First, run `setup_geth.sh` to set up the Geth client.
   - Next, run `setup_pos.sh` to configure the PoS settings.

3. **Follow any prompts**:
   The scripts may prompt you for additional information or confirmation during the setup process. Follow the on-screen instructions to complete the setup.

## Additional Information

For more detailed instructions on using the Geth client and configuring the PoS environment, please refer to the README files located in the respective directories for Prysm, Lighthouse, and Genesis.