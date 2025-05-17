# Ethereum PoS Private Chain Setup

This project provides a comprehensive setup for creating an Ethereum Proof of Stake (PoS) private chain using the Prysm and Lighthouse clients. It includes all necessary configurations, deposit contracts, and scripts to generate the genesis block.

## Project Structure

```
eth-pos-private-chain-setup
├── prysm
│   ├── config
│   │   └── config.yaml
│   ├── deposit-contract
│   │   └── DepositContract.sol
│   └── scripts
│       └── generate_genesis_prysm.sh
├── lighthouse
│   ├── config
│   │   └── testnet-spec.yaml
│   ├── deposit-contract
│   │   └── DepositContract.sol
│   └── scripts
│       └── generate_genesis_lighthouse.sh
├── genesis
│   ├── deposits.json
│   ├── genesis.ssz
│   └── create_deposits.py
├── geth
│   ├── genesis.json
│   ├── start_geth.sh
│   └── README.md
├── validators
│   └── keystores
└── README.md
```

## Components

- **Prysm**: Contains configuration files, deposit contracts, and scripts for generating the genesis block for the Prysm client.
- **Lighthouse**: Contains configuration files, deposit contracts, and scripts for generating the genesis block for the Lighthouse client.
- **Genesis**: Contains files related to the genesis block, including deposit data and scripts for creating deposits.
- **Geth**: Contains configuration files and scripts for running the Geth client.
- **Validators**: Contains keystore files for validators.

## Setup Instructions

1. **Clone the Repository**: Clone this repository to your local machine.
2. **Install Dependencies**: Ensure you have all necessary dependencies installed for Prysm, Lighthouse, and Geth.
3. **Configure Clients**: Modify the configuration files in the `prysm/config` and `lighthouse/config` directories as needed.
4. **Generate Genesis Block**:
   - For Prysm: Run `./scripts/generate_genesis_prysm.sh` to generate the genesis block.
   - For Lighthouse: Run `./scripts/generate_genesis_lighthouse.sh` to generate the genesis block.
5. **Start Geth**: Use the `start_geth.sh` script in the `geth` directory to start the Geth client with the specified configuration.

## Usage Guidelines

- Ensure that you have the correct versions of the Prysm and Lighthouse clients installed.
- Follow the instructions in the respective `README.md` files within the `geth` directory for specific Geth setup instructions.
- Make sure to back up your keystore files located in the `validators/keystores` directory.

This setup provides a robust foundation for developing and testing Ethereum PoS applications in a private chain environment.