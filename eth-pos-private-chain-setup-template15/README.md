# Ethereum PoS Private Chain Setup

This project provides a comprehensive setup for creating an Ethereum Proof of Stake (PoS) private chain using the Prysm and Lighthouse clients. It includes all necessary components, configuration files, and scripts to facilitate the deployment and management of a private Ethereum network.

## Project Structure

The project is organized into the following directories:

- **prysm**: Contains files and scripts related to the Prysm client.
  - **README.md**: Instructions for configuring and running the Prysm client.
  - **config**: Configuration files for the Prysm client.
    - **config.yaml**: Configuration settings for the Prysm client.
    - **genesis.ssz**: Serialized genesis state for the Prysm client.
  - **scripts**: Scripts for automating tasks related to the Prysm client.
    - **generate_genesis.sh**: Script to generate the genesis file for the Prysm client.

- **lighthouse**: Contains files and scripts related to the Lighthouse client.
  - **README.md**: Instructions for configuring and running the Lighthouse client.
  - **config**: Configuration files for the Lighthouse client.
    - **testnet-spec.yaml**: Configuration settings for the Lighthouse client.
    - **genesis.ssz**: Serialized genesis state for the Lighthouse client.
  - **scripts**: Scripts for automating tasks related to the Lighthouse client.
    - **generate_genesis.sh**: Script to generate the genesis file for the Lighthouse client.

- **deposit_contract**: Contains the deposit contract necessary for Ethereum 2.0 staking.
  - **DepositContract.sol**: Solidity code for the deposit contract.
  - **README.md**: Documentation for the deposit contract.

- **geth**: Contains files and scripts related to the Geth client.
  - **genesis.json**: Genesis configuration for the Geth client.
  - **README.md**: Instructions for configuring and running the Geth client.

- **validator_keys**: Directory containing the validator keys necessary for staking.
  - **keys**: Validator keys.
  - **README.md**: Documentation regarding the validator keys.

- **scripts**: Contains scripts for automating various setup processes.
  - **setup_prysm.sh**: Script to automate the setup process for the Prysm client.
  - **setup_lighthouse.sh**: Script to automate the setup process for the Lighthouse client.
  - **generate_validators.sh**: Script to generate validator keys and configurations.

## Setup Instructions

1. **Clone the Repository**: Start by cloning this repository to your local machine.
   
   ```bash
   git clone <repository-url>
   cd eth-pos-private-chain-setup
   ```

2. **Install Dependencies**: Ensure you have the necessary dependencies installed for both Prysm and Lighthouse clients.

3. **Configure Clients**: Modify the configuration files located in the `prysm/config` and `lighthouse/config` directories as needed.

4. **Generate Genesis Files**: Use the provided scripts to generate the genesis files for both clients.

   For Prysm:
   ```bash
   cd prysm/scripts
   ./generate_genesis.sh
   ```

   For Lighthouse:
   ```bash
   cd ../lighthouse/scripts
   ./generate_genesis.sh
   ```

5. **Run Clients**: Follow the instructions in the respective README files for the Prysm and Lighthouse clients to start your private chain.

6. **Deploy Deposit Contract**: Use the provided Solidity code in the `deposit_contract` directory to deploy the deposit contract.

7. **Manage Validator Keys**: Follow the instructions in the `validator_keys` directory to generate and manage your validator keys.

## Conclusion

This setup provides a robust foundation for running an Ethereum PoS private chain. For detailed instructions on each component, please refer to the respective README files in their directories.