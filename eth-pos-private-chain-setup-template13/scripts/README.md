# Ethereum PoS Private Chain Setup Scripts

This directory contains utility scripts that assist in the setup and deployment of the Ethereum Proof of Stake (PoS) private chain.

## Scripts Overview

1. **generate_genesis.sh**
   - This script is used to generate the genesis block for the Ethereum PoS private chain. It configures the initial state of the blockchain and prepares it for the first block.

2. **deploy_deposit_contract.sh**
   - This script is responsible for deploying the deposit contract to the Ethereum network. It ensures that the contract is properly set up to handle deposits from validators.

## Usage

To use these scripts, ensure that you have the necessary dependencies installed and configured. You can run the scripts from the command line as follows:

```bash
# Generate the genesis block
bash generate_genesis.sh

# Deploy the deposit contract
bash deploy_deposit_contract.sh
```

Make sure to review the individual script files for additional options and configurations.