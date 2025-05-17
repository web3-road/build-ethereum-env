# Ethereum PoS Private Chain Setup

This project provides a comprehensive setup for creating an Ethereum Proof of Stake (PoS) private chain using the Prysm and Lighthouse clients. It includes all necessary configuration files, scripts, and documentation to facilitate the deployment and management of a private Ethereum network.

## Project Structure

- **prysm/**: Contains configuration files for the Prysm client.
  - `beacon-chain-config.yaml`: Configuration for the Prysm beacon chain settings.
  - `validator-config.yaml`: Configuration for the Prysm validator settings.
  - `deposit_contract.txt`: Information about the deposit contract.

- **lighthouse/**: Contains configuration files for the Lighthouse client.
  - `beacon-node-config.toml`: Configuration for the Lighthouse beacon node settings.
  - `validator-config.toml`: Configuration for the Lighthouse validator settings.
  - `deposit_contract.txt`: Information about the deposit contract.

- **genesis/**: Contains files related to the genesis block.
  - `deposit_data.json`: JSON file with deposit data for the genesis block.
  - `genesis.ssz`: Serialized file representing the genesis state of the blockchain.
  - `README.md`: Documentation for the genesis directory.

- **scripts/**: Contains shell scripts for setup and configuration.
  - `generate_genesis.sh`: Script to generate the genesis block.
  - `setup_validators.sh`: Script to set up validators for the network.

- **config/**: Contains configuration files for the Ethereum client.
  - `geth-genesis.json`: Genesis configuration file for the Geth client.
  - `config.yaml`: General configuration file for the project.
  - `lighthouse-env.env`: Environment variable configuration file for Lighthouse.

## Getting Started

1. **Clone the Repository**: 
   Clone this repository to your local machine using:
   ```
   git clone <repository-url>
   ```

2. **Install Dependencies**: 
   Ensure you have all necessary dependencies installed for both Prysm and Lighthouse clients.

3. **Configure Clients**: 
   Modify the configuration files in the `prysm` and `lighthouse` directories as needed for your setup.

4. **Generate Genesis Block**: 
   Run the `generate_genesis.sh` script to create the genesis block.

5. **Set Up Validators**: 
   Use the `setup_validators.sh` script to configure and start your validators.

6. **Start the Network**: 
   Launch the Prysm and Lighthouse clients to start your Ethereum PoS private chain.

## Documentation

Refer to the individual README files in the `genesis` directory and other subdirectories for more detailed information on specific components and configurations.

## License

This project is licensed under the MIT License. See the LICENSE file for more details.