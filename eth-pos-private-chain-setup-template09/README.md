# Ethereum PoS Private Chain Setup

This project provides a comprehensive setup for creating an Ethereum Proof of Stake (PoS) private chain using the Prysm and Lighthouse clients. It includes all necessary configurations, scripts, and files to get started with your own private Ethereum network.

## Project Structure

```
eth-pos-private-chain-setup
├── prysm
│   ├── config
│   │   └── config.yaml
│   ├── deposit-contract
│   │   └── DepositContract.sol
│   └── scripts
│       ├── generate_genesis.sh
│       └── run_prysm.sh
├── lighthouse
│   ├── config
│   │   └── config.toml
│   └── scripts
│       ├── generate_genesis.sh
│       └── run_lighthouse.sh
├── genesis
│   ├── genesis.ssz
│   └── genesis.json
├── validator_keys
│   ├── deposit_data-0.json
│   └── keystore-0.json
├── README.md
└── docker-compose.yml
```

## Components

- **Prysm**: This directory contains all files related to the Prysm client, including configuration files, the deposit contract, and scripts for generating the genesis file and running the Prysm client.

- **Lighthouse**: This directory contains files related to the Lighthouse client, including configuration files and scripts for generating the genesis file and running the Lighthouse client.

- **Genesis**: This directory holds the genesis files, including both the serialized (`genesis.ssz`) and JSON representation (`genesis.json`) of the genesis state.

- **Validator Keys**: This directory contains the keys necessary for validators to participate in the network, including deposit data and keystore files.

- **docker-compose.yml**: This file is used to define and run multi-container Docker applications, specifying services for both the Prysm and Lighthouse clients.

## Setup Instructions

1. **Clone the Repository**: Start by cloning this repository to your local machine.

2. **Install Dependencies**: Ensure you have Docker and Docker Compose installed on your machine.

3. **Configure Clients**: Modify the configuration files located in the `prysm/config` and `lighthouse/config` directories to suit your network requirements.

4. **Generate Genesis Files**: Use the provided scripts in the `prysm/scripts` and `lighthouse/scripts` directories to generate the genesis files.

5. **Run the Network**: Use the `docker-compose.yml` file to start the Prysm and Lighthouse clients. Run the following command in the root directory:
   ```
   docker-compose up
   ```

6. **Validator Setup**: Ensure that your validator keys are correctly placed in the `validator_keys` directory.

## Usage Guidelines

- Follow the instructions in each script to understand how to generate genesis files and run the respective clients.
- Refer to the configuration files for detailed settings and parameters that can be adjusted based on your needs.
- Ensure that you have the necessary Ethereum client dependencies installed and configured properly.

This setup provides a solid foundation for experimenting with Ethereum's PoS mechanism in a private environment. Happy coding!