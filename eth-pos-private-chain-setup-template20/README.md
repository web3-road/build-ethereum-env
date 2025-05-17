# Ethereum PoS Private Chain Setup

This project provides a comprehensive setup for creating an Ethereum Proof of Stake (PoS) private chain using Prysm and Lighthouse tools. It includes all necessary components, scripts, and configurations to get started with your own private Ethereum network.

## Project Structure

```
eth-pos-private-chain-setup
├── prysm
│   ├── deposit-cli
│   │   └── README.md
│   ├── beacon-chain
│   │   └── README.md
│   └── validator
│       └── README.md
├── lighthouse
│   ├── bin
│   │   └── README.md
│   └── scripts
│       └── generate_genesis.sh
├── genesis
│   ├── deposit_contract.sol
│   ├── genesis.ssz
│   └── README.md
├── config
│   ├── beacon-chain.yaml
│   ├── geth-genesis.json
│   └── validator-keys
│       └── README.md
├── scripts
│   ├── setup_geth.sh
│   ├── setup_prysm.sh
│   ├── setup_lighthouse.sh
│   └── generate_genesis.sh
└── README.md
```

## Setup Instructions

1. **Clone the Repository**
   Clone this repository to your local machine using:
   ```
   git clone <repository-url>
   ```

2. **Install Dependencies**
   Ensure you have the necessary dependencies installed for both Prysm and Lighthouse. Follow the installation instructions in their respective directories.

3. **Configure the Network**
   Modify the configuration files located in the `config` directory to suit your network requirements. Pay special attention to `beacon-chain.yaml` and `geth-genesis.json`.

4. **Generate the Genesis Block**
   Use the provided scripts to generate the genesis block:
   ```
   cd scripts
   ./generate_genesis.sh
   ```

5. **Setup Geth**
   Run the setup script for Geth:
   ```
   ./setup_geth.sh
   ```

6. **Setup Prysm**
   Follow the instructions in the `prysm` directory to set up the beacon chain and validator.

7. **Run the Network**
   Start the beacon chain and validator nodes as per the instructions in their respective README files.

## Additional Information

- **Prysm**: This directory contains components related to the Prysm ecosystem, including the deposit CLI, beacon chain, and validator setup.
- **Lighthouse**: This directory includes the Lighthouse client binaries and scripts for generating the genesis block.
- **Genesis**: Contains the deposit contract and the serialized genesis state.
- **Config**: Configuration files for the beacon chain and Geth execution layer.
- **Scripts**: Automation scripts for setting up the various components of the Ethereum PoS private chain.

For detailed instructions on each component, please refer to the respective README files in their directories.