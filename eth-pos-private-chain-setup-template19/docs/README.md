# Ethereum PoS Private Chain Setup

This project provides a comprehensive setup for creating an Ethereum Proof of Stake (PoS) private chain using the Prysm and Lighthouse clients. It includes all necessary components for both the beacon and execution layers, as well as scripts to facilitate the deployment and management of the chain.

## Project Structure

The project is organized into the following directories:

- **beacon**: Contains components related to the beacon chain.
  - **prysm**: Configuration and scripts for the Prysm client.
    - `config.yaml`: Configuration settings for the Prysm beacon node.
    - `scripts/run-prysm.sh`: Script to start the Prysm beacon node.
  - **lighthouse**: Configuration and scripts for the Lighthouse client.
    - `config.yaml`: Configuration settings for the Lighthouse beacon node.
    - `scripts/run-lighthouse.sh`: Script to start the Lighthouse beacon node.
  - **genesis**: Files related to the genesis block.
    - `deposit_contract.sol`: Solidity code for the deposit contract.
    - `validator_keys`: Directory containing keystore files for validator keys.
    - `genesis.ssz`: Serialized genesis state for the beacon chain.
    - `generate_genesis.sh`: Script to generate the genesis.ssz file.

- **execution**: Contains components related to the execution layer.
  - **geth**: Configuration and scripts for the Geth client.
    - `genesis.json`: Genesis block configuration for the Geth client.
    - `scripts/run-geth.sh`: Script to start the Geth client.
  - **configs**: Custom configuration files.
    - `custom_config.yaml`: Custom configuration settings for the execution layer.

- **docs**: Documentation for the project.
  - `README.md`: Instructions for setting up and using the Ethereum PoS private chain.

- **.env.example**: Example for environment variable configuration.

- **README.md**: Main documentation providing an overview and setup instructions.

## Getting Started

To set up your own Ethereum PoS private chain, follow these steps:

1. **Clone the Repository**: Clone this repository to your local machine.
2. **Install Dependencies**: Ensure you have all necessary dependencies installed for both Prysm and Lighthouse clients.
3. **Configure the Clients**: Modify the `config.yaml` files in the `beacon/prysm` and `beacon/lighthouse` directories as needed.
4. **Generate Genesis State**: Use the `generate_genesis.sh` script in the `beacon/genesis` directory to create the `genesis.ssz` file.
5. **Start the Beacon Node**: Run the appropriate script (`run-prysm.sh` or `run-lighthouse.sh`) to start your beacon node.
6. **Start the Execution Layer**: Use the `run-geth.sh` script in the `execution/geth` directory to start the Geth client.

## Contributing

Contributions are welcome! Please feel free to submit issues or pull requests to improve this project.

## License

This project is licensed under the MIT License. See the LICENSE file for more details.