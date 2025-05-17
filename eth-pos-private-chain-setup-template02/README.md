# Ethereum PoS Private Chain Setup

This project provides a comprehensive setup for creating an Ethereum Proof of Stake (PoS) private chain using the Prysm and Lighthouse clients. It includes all necessary components for deploying a private chain, managing validators, and generating the genesis block.

## Project Structure

- **prysm/**: Contains components related to the Prysm client.
  - **deposit-cli/**: Command-line interface for handling deposits to the beacon chain.
  - **beacon-chain/**: Implementation of the beacon chain.
  - **validator/**: Validator client for participating in the PoS network.
  - **README.md**: Documentation for using the Prysm components.

- **lighthouse/**: Contains components related to the Lighthouse client.
  - **lighthouse/**: Lighthouse client implementation.
  - **genesis/**: Files related to genesis block creation.
  - **README.md**: Documentation for using the Lighthouse components.

- **genesis/**: Files necessary for the genesis block setup.
  - **deposit_contract.sol**: Solidity code for the deposit contract.
  - **genesis.ssz**: Serialized representation of the genesis state.
  - **genesis.json**: Configuration for the genesis block.
  - **config.yaml**: Configuration settings for the private chain.
  - **README.md**: Documentation for the genesis setup.

- **scripts/**: Shell scripts for automation.
  - **generate_genesis.sh**: Script to generate the genesis block.
  - **deploy_contract.sh**: Script to deploy the deposit contract to the blockchain.
  - **README.md**: Documentation for the scripts.

- **docs/**: Documentation for the project.
  - **setup_guide.md**: Detailed guide on setting up the Ethereum PoS private chain.

## Getting Started

1. **Clone the Repository**: 
   Clone this repository to your local machine using:
   ```
   git clone <repository-url>
   ```

2. **Install Dependencies**: 
   Follow the instructions in the respective README files within the `prysm` and `lighthouse` directories to install necessary dependencies.

3. **Configure the Genesis Block**: 
   Modify the `genesis.json` and `config.yaml` files in the `genesis` directory as needed for your setup.

4. **Generate the Genesis Block**: 
   Run the `generate_genesis.sh` script located in the `scripts` directory to create the genesis block.

5. **Deploy the Deposit Contract**: 
   Use the `deploy_contract.sh` script to deploy the deposit contract to your private chain.

6. **Start the Clients**: 
   Follow the instructions in the `README.md` files in the `prysm` and `lighthouse` directories to start the respective clients and begin participating in the network.

## Documentation

For detailed instructions on setup and usage, refer to the documentation in the `docs/setup_guide.md` file and the README files in each component directory.