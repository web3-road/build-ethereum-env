# Ethereum PoS Private Chain Setup Guide

## Overview

This guide provides detailed instructions for setting up an Ethereum Proof of Stake (PoS) private chain using Prysm and Lighthouse. It covers the installation, configuration, and execution of the necessary components, including Geth, deposit contracts, and validator setup.

## Prerequisites

- Ensure you have the following installed on your system:
  - Go (for Prysm)
  - Rust (for Lighthouse)
  - Node.js (for Geth and deposit contract deployment)
  - Docker (optional, for containerized setups)

## Directory Structure

The project is organized as follows:

```
eth-pos-private-chain-setup/
├── prysm/
├── lighthouse/
├── geth/
├── deposit-contract/
├── validators/
└── docs/
```

## Steps to Set Up the Private Chain

### 1. Setting Up Prysm

1. Navigate to the `prysm` directory:
   ```
   cd eth-pos-private-chain-setup/prysm
   ```

2. Review the `README.md` for installation instructions.

3. Configure the `config.yaml` file located in the `config` directory according to your network specifications.

4. Generate the genesis file using the provided script:
   ```
   ./scripts/generate_genesis.sh
   ```

### 2. Setting Up Lighthouse

1. Navigate to the `lighthouse` directory:
   ```
   cd eth-pos-private-chain-setup/lighthouse
   ```

2. Review the `README.md` for installation instructions.

3. Configure the `testnet-spec.yaml` file located in the `config` directory.

4. Generate the genesis file using the provided script:
   ```
   ./scripts/generate_genesis.sh
   ```

### 3. Setting Up Geth

1. Navigate to the `geth` directory:
   ```
   cd eth-pos-private-chain-setup/geth
   ```

2. Review the `README.md` for installation instructions.

3. Initialize Geth with the genesis configuration:
   ```
   ./scripts/init_geth.sh
   ```

### 4. Deploying the Deposit Contract

1. Navigate to the `deposit-contract` directory:
   ```
   cd eth-pos-private-chain-setup/deposit-contract
   ```

2. Review the `README.md` for deployment instructions.

3. Deploy the deposit contract using the provided script:
   ```
   ./scripts/deploy_contract.sh
   ```

### 5. Setting Up Validators

1. Navigate to the `validators` directory:
   ```
   cd eth-pos-private-chain-setup/validators
   ```

2. Review the `README.md` for instructions on generating and managing validator keys.

## Running the Private Chain

Once all components are set up, you can start the private chain by launching the Prysm beacon node, Lighthouse, and Geth clients. Ensure that all configurations are consistent across the different components.

## Conclusion

This setup guide provides a comprehensive overview of configuring an Ethereum PoS private chain. Follow the steps carefully to ensure a successful deployment. For further assistance, refer to the individual component documentation in their respective directories.