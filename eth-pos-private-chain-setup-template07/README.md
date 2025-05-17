# Ethereum PoS Private Chain Setup

This project provides a comprehensive setup for creating a private Ethereum Proof of Stake (PoS) chain using Prysm and Lighthouse clients. It includes scripts for configuration, genesis block generation, and client setup.

## Project Structure

```
eth-pos-private-chain-setup
├── prysm
│   ├── prysm.sh
│   ├── config.yaml
│   └── README.md
├── lighthouse
│   ├── lighthouse.sh
│   ├── config.yaml
│   └── README.md
├── genesis
│   ├── generate_genesis.sh
│   ├── deposit_contract.json
│   ├── validators
│   │   └── keystore.json
│   └── README.md
├── scripts
│   ├── setup_geth.sh
│   ├── setup_pos.sh
│   └── README.md
├── config
│   ├── genesis.json
│   ├── config.yaml
│   └── README.md
└── README.md
```

## Components

- **Prysm**: A client for Ethereum 2.0 that allows you to run a validator node. The `prysm` directory contains the necessary scripts and configuration files to set up and run Prysm.
  
- **Lighthouse**: Another client for Ethereum 2.0, providing similar functionality to Prysm. The `lighthouse` directory includes scripts and configuration for Lighthouse.

- **Genesis**: This directory contains scripts and files necessary for generating the genesis block of the private chain, including the deposit contract and validator keystore.

- **Scripts**: Contains setup scripts for configuring the Geth client and PoS settings.

- **Config**: Holds configuration files for the genesis block and general settings for the private chain setup.

## Setup Instructions

1. **Clone the Repository**: 
   Clone this repository to your local machine.

   ```bash
   git clone <repository-url>
   cd eth-pos-private-chain-setup
   ```

2. **Install Dependencies**: 
   Ensure you have all necessary dependencies installed for Prysm and Lighthouse.

3. **Configure Genesis Block**: 
   Modify the `config/genesis.json` and `config/config.yaml` files as needed for your setup.

4. **Generate Genesis Block**: 
   Run the script to generate the genesis block.

   ```bash
   cd genesis
   ./generate_genesis.sh
   ```

5. **Start Clients**: 
   Use the provided scripts in the `prysm` and `lighthouse` directories to start the respective clients.

   ```bash
   cd prysm
   ./prysm.sh
   ```

6. **Validator Setup**: 
   Ensure your validators are properly configured using the keystore files in the `genesis/validators` directory.

## Usage Guidelines

Refer to the individual `README.md` files in each directory for detailed instructions on using Prysm, Lighthouse, and the genesis generation process. Each component has its own setup and usage instructions tailored to ensure a smooth experience in running your Ethereum PoS private chain.

## License

This project is licensed under the MIT License. See the LICENSE file for more details.