# Ethereum PoS Private Chain Setup

This project provides a comprehensive setup for creating a private Ethereum Proof of Stake (PoS) chain using the Prysm and Lighthouse clients. It includes all necessary components, scripts, and configurations to get started with your own Ethereum PoS network.

## Project Structure

- **prysm/**: Contains components related to the Prysm client.
  - **deposit-cli/**: Tools for generating deposit data.
  - **beacon-chain/**: Information about the beacon chain component.
  - **validator/**: Information about the validator setup.

- **lighthouse/**: Contains components related to the Lighthouse client.
  - **lighthouse/**: Information about the Lighthouse client.
  - **genesis/**: Information about generating genesis files.

- **geth/**: Contains files related to the Geth client.
  - **genesis.json**: Genesis configuration for the Geth client.

- **genesis/**: Contains files related to the genesis block and deposit contract.
  - **deposit_contract.sol**: Solidity code for the deposit contract.
  - **genesis.ssz**: Serialized genesis state for the Ethereum network.
  - **generate_genesis.md**: Instructions on how to generate the genesis block.

- **scripts/**: Contains shell scripts for various setup tasks.
  - **generate_deposit_keys.sh**: Generates deposit keys for validators.
  - **generate_genesis.sh**: Generates the genesis block.
  - **start_network.sh**: Starts the Ethereum network.

- **config/**: Contains configuration files for the different components.
  - **prysm-config.yaml**: Configuration settings for the Prysm client.
  - **lighthouse-config.yaml**: Configuration settings for the Lighthouse client.
  - **geth-config.toml**: Configuration settings for the Geth client.

## Getting Started

1. **Clone the Repository**: Clone this repository to your local machine.
2. **Install Dependencies**: Ensure you have all necessary dependencies installed for Prysm, Lighthouse, and Geth.
3. **Configure Clients**: Modify the configuration files in the `config/` directory as needed.
4. **Generate Deposit Keys**: Run the `scripts/generate_deposit_keys.sh` script to generate keys for your validators.
5. **Generate Genesis Block**: Use the `scripts/generate_genesis.sh` script to create the genesis block.
6. **Start the Network**: Execute the `scripts/start_network.sh` script to launch your Ethereum PoS private chain.

## Documentation

Refer to the README files in each subdirectory for detailed instructions on using the respective components and tools.

## License

This project is licensed under the MIT License. See the LICENSE file for more information.