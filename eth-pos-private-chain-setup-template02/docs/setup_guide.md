# Ethereum PoS Private Chain Setup Guide

## Introduction
This guide provides step-by-step instructions for setting up an Ethereum Proof of Stake (PoS) private chain using Prysm and Lighthouse clients. It covers the necessary components, configuration files, and scripts required to successfully deploy and run your private chain.

## Prerequisites
Before you begin, ensure you have the following installed on your system:
- Go (for Prysm)
- Rust (for Lighthouse)
- Node.js (for any JavaScript-based tools)
- Docker (optional, for containerized setups)

## Project Structure
The project is organized as follows:

```
eth-pos-private-chain-setup
├── prysm
│   ├── deposit-cli
│   ├── beacon-chain
│   ├── validator
│   └── README.md
├── lighthouse
│   ├── lighthouse
│   ├── genesis
│   └── README.md
├── genesis
│   ├── deposit_contract.sol
│   ├── genesis.ssz
│   ├── genesis.json
│   ├── config.yaml
│   └── README.md
├── scripts
│   ├── generate_genesis.sh
│   ├── deploy_contract.sh
│   └── README.md
├── docs
│   └── setup_guide.md
├── .gitignore
└── README.md
```

## Step 1: Clone the Repository
Clone the repository to your local machine:
```bash
git clone <repository-url>
cd eth-pos-private-chain-setup
```

## Step 2: Configure Genesis Files
Navigate to the `genesis` directory and edit the following files:
- **genesis.json**: Configure the parameters for your genesis block.
- **config.yaml**: Set the configuration options for your private chain.

## Step 3: Generate the Genesis Block
Run the script to generate the genesis block:
```bash
cd scripts
bash generate_genesis.sh
```

## Step 4: Deploy the Deposit Contract
Deploy the deposit contract to your private chain:
```bash
bash deploy_contract.sh
```

## Step 5: Start Prysm and Lighthouse
1. **Prysm**: Navigate to the `prysm` directory and follow the instructions in the `README.md` to start the beacon chain and validator.
2. **Lighthouse**: Navigate to the `lighthouse` directory and follow the instructions in the `README.md` to start the Lighthouse client.

## Step 6: Verify the Setup
Check the logs of both Prysm and Lighthouse to ensure that they are running correctly and that the deposit contract has been deployed successfully.

## Conclusion
You have successfully set up an Ethereum PoS private chain using Prysm and Lighthouse. For further customization and advanced configurations, refer to the respective `README.md` files in each directory.