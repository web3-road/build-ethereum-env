# Ethereum PoS Private Chain Setup

This project provides a comprehensive setup for creating an Ethereum Proof of Stake (PoS) private chain. It includes configurations and scripts for both the beacon chain and execution chain, utilizing Prysm and Lighthouse for the beacon chain, and Geth and Hardhat for the execution chain.

## Project Structure

- **eth-pos-private-chain-setup/**: Root directory for the Ethereum PoS private chain setup.
  
- **beacon-chain/**: Contains configurations and scripts for the beacon chain.
  - **prysm/**: Contains the Prysm beacon chain client configurations and scripts.
    - **config.yaml**: Configuration settings for the Prysm client.
    - **scripts/start-prysm.sh**: Script to start the Prysm beacon chain client.
  - **lighthouse/**: Contains the Lighthouse beacon chain client configurations and scripts.
    - **config.yaml**: Configuration settings for the Lighthouse client.
    - **scripts/start-lighthouse.sh**: Script to start the Lighthouse beacon chain client.

- **execution-chain/**: Contains configurations and scripts for the execution chain.
  - **geth/**: Contains the Geth execution client configurations and scripts.
    - **genesis.json**: Defines the genesis block for the Geth client.
    - **config.toml**: Configuration settings for the Geth client.
    - **scripts/start-geth.sh**: Script to start the Geth execution client.
  - **hardhat/**: Contains the Hardhat configuration and deployment scripts.
    - **deploy/deployDepositContract.js**: Script to deploy the Deposit Contract to the Ethereum network.
    - **hardhat.config.js**: Configuration settings for the Hardhat development environment.

- **genesis/**: Contains files related to the genesis block and validator keys.
  - **deposit_contract/**: Contains the Solidity contract for the deposit.
    - **DepositContract.sol**: Solidity code for the Deposit Contract.
  - **validator_keys/**: Contains the keystore for validator keys.
    - **keystore.json**: Keystore information for the validator keys.
  - **genesis.ssz**: Serialized genesis state for the Ethereum network.
  - **generate_genesis.sh**: Script to generate the genesis.ssz file.
  - **README.md**: Documentation related to the genesis setup.

- **scripts/**: Contains general setup and cleanup scripts.
  - **setup.sh**: Script to set up the environment for the private chain.
  - **cleanup.sh**: Script to clean up the environment after use.

- **.env.example**: Example environment variable configuration file.

## Getting Started

1. **Clone the Repository**: Clone this repository to your local machine.
2. **Install Dependencies**: Ensure you have all necessary dependencies installed for Prysm, Lighthouse, Geth, and Hardhat.
3. **Configure Environment**: Copy `.env.example` to `.env` and configure your environment variables.
4. **Run Setup Script**: Execute the `scripts/setup.sh` script to set up the environment.
5. **Start Beacon Chain**: Use the provided scripts to start either the Prysm or Lighthouse beacon chain client.
6. **Start Execution Chain**: Use the Geth scripts to start the execution chain and deploy contracts using Hardhat.

## Contributing

Contributions are welcome! Please feel free to submit a pull request or open an issue for any enhancements or bug fixes.

## License

This project is licensed under the MIT License. See the LICENSE file for more details.