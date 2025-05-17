# Ethereum 2.0 Private Chain Setup

This project is designed to create a private Ethereum 2.0 chain using the Geth execution layer and the Prysm beacon chain. It includes all necessary components to set up, deploy, and run a private PoS (Proof of Stake) network.

## Project Structure

- **beacon-chain/**: Contains the configuration and genesis state for the Prysm beacon chain.
  - `config.yaml`: Configuration settings for the beacon chain.
  - `genesis.ssz`: Serialized genesis state including deposit events.

- **deposit-contract/**: Contains the Solidity code for the deposit contract.
  - `DepositContract.sol`: The smart contract for handling validator deposits.
  - `README.md`: Instructions for deploying the deposit contract.

- **validator-keys/**: Contains the keys and deposit data for validators.
  - `keystore-0.json`: Keystore file for the validator's private key.
  - `deposit_data-0.json`: Deposit data for the validator registration.

- **scripts/**: Contains scripts for generating genesis and deploying contracts.
  - `generate_genesis.sh`: Script to generate the `genesis.ssz` file.
  - `deploy_contract.sh`: Script to deploy the deposit contract.

- **geth/**: Contains the configuration for the Geth execution layer.
  - `genesis.json`: Genesis configuration for the Geth layer.
  - `README.md`: Instructions for setting up and running Geth.

## Setup Instructions

1. **Install Dependencies**: Ensure you have the necessary tools installed, including Geth, Prysm, and any required Solidity development tools.

2. **Configure the Beacon Chain**: Edit `beacon-chain/config.yaml` to set the parameters for your beacon chain, including the deposit contract address.

3. **Generate Genesis State**: Use the `scripts/generate_genesis.sh` script to create the `genesis.ssz` file. This will include the deposit contract and validator information.

4. **Deploy the Deposit Contract**: Use the `scripts/deploy_contract.sh` script to deploy the deposit contract to the Ethereum network.

5. **Run Geth**: Start the Geth execution layer using the configuration in `geth/genesis.json`.

6. **Start the Beacon Chain**: Launch the Prysm beacon chain with the generated `genesis.ssz` file.

## Running the Components

Follow the instructions in the respective `README.md` files within each directory for detailed steps on running each component of the private Ethereum chain.

## Conclusion

This project provides a comprehensive setup for creating a private Ethereum 2.0 chain, allowing for experimentation and development in a controlled environment.