# Ethereum PoS Private Chain Setup

This project provides a comprehensive setup for creating an Ethereum Proof of Stake (PoS) private chain using the Prysm and Lighthouse clients. It includes all necessary components, such as deposit contracts, genesis configuration, and validator management.

## Project Structure

- **eth-pos-private-chain-setup**: Root directory for the Ethereum PoS private chain setup.
  
- **prysm**: Contains files related to the Prysm client.
  - **beacon-chain**: Implementation of the Prysm beacon chain.
  - **validator**: Implementation of the Prysm validator.
  - **scripts/generate_genesis.sh**: Script to generate the genesis block for the Prysm client.

- **lighthouse**: Contains files related to the Lighthouse client.
  - **lighthouse**: Implementation of the Lighthouse client.
  - **scripts/generate_genesis.sh**: Script to generate the genesis block for the Lighthouse client.

- **deposit_contract**: Contains the smart contract for deposits.
  - **DepositContract.sol**: Solidity code for the deposit contract.
  - **deploy.js**: JavaScript code to deploy the deposit contract.

- **genesis**: Contains files related to the genesis configuration.
  - **genesis.ssz**: Serialized genesis state in SSZ format.
  - **genesis.json**: Genesis configuration in JSON format.
  - **config.yaml**: Configuration settings for the genesis setup.

- **validators**: Contains files related to validator keys and secrets.
  - **keys**: Public keys for the validators.
  - **secrets**: Private keys or secrets for the validators.

- **scripts**: Contains utility scripts for setting up the environment.
  - **setup.sh**: Script to set up the environment for the private chain.
  - **README.md**: Documentation for the scripts directory.

## Getting Started

1. **Clone the Repository**: Clone this repository to your local machine.
   
2. **Install Dependencies**: Ensure you have all necessary dependencies installed for both Prysm and Lighthouse clients.

3. **Generate Genesis Block**: Use the provided scripts in the `prysm/scripts` or `lighthouse/scripts` directories to generate the genesis block.

4. **Deploy Deposit Contract**: Deploy the deposit contract using the `deploy.js` script in the `deposit_contract` directory.

5. **Start the Clients**: Follow the instructions in the respective client directories to start the Prysm and Lighthouse clients.

6. **Manage Validators**: Use the `validators` directory to manage your validator keys and secrets.

## Contributing

Contributions are welcome! Please feel free to submit a pull request or open an issue for any enhancements or bug fixes.

## License

This project is licensed under the MIT License. See the LICENSE file for more details.