# Ethereum PoS Private Chain Setup

This project provides a comprehensive setup for creating and managing an Ethereum Proof of Stake (PoS) private chain using Prysm and Lighthouse tools. It includes the necessary components for deploying a private Ethereum network, managing validators, and configuring the genesis block.

## Project Structure

The project is organized into several directories, each containing specific tools and resources:

- **prysm/**: Contains tools related to the Prysm client.
  - **deposit-cli/**: Code and resources for the deposit CLI tool, used to create deposit transactions for validators.
  - **beacon-chain/**: Code and resources for the Prysm beacon chain, responsible for managing the consensus layer.
  - **validator/**: Code and resources for the Prysm validator, used to participate in the consensus process.

- **lighthouse/**: Contains tools related to the Lighthouse client.
  - **lighthouse/**: Code and resources for the Lighthouse client, an alternative implementation of the Ethereum PoS client.
  - **genesis/**: Resources related to the genesis block setup for the Lighthouse client.

- **genesis/**: Contains files related to the genesis block configuration.
  - **deposit_contract.sol**: Solidity code for the deposit contract, handling deposits for validators.
  - **genesis.ssz**: Serialized representation of the genesis block, containing the initial state of the blockchain.
  - **genesis.json**: JSON configuration for the genesis block, specifying parameters such as initial validators and chain ID.

- **scripts/**: Contains scripts for generating the genesis block and setting up validators.
  - **generate_genesis.sh**: Script to generate the genesis block configuration and related files.
  - **setup_validators.sh**: Script to set up validators, including generating keys and configuring validator clients.

- **config/**: Contains configuration files for the various components.
  - **prysm-config.yaml**: Configuration settings for the Prysm client.
  - **lighthouse-config.yaml**: Configuration settings for the Lighthouse client.
  - **geth-config.json**: Configuration settings for Geth, specifying parameters for the Ethereum execution layer.

## Getting Started

1. **Clone the Repository**: Start by cloning this repository to your local machine.
   
   ```bash
   git clone <repository-url>
   cd eth-pos-private-chain-setup
   ```

2. **Install Dependencies**: Follow the instructions in the respective README files within the `prysm` and `lighthouse` directories to install any necessary dependencies.

3. **Configure the Genesis Block**: Modify the `genesis.json` and `deposit_contract.sol` files as needed to set up your initial blockchain state and validator deposits.

4. **Generate the Genesis Block**: Run the `generate_genesis.sh` script to create the genesis block configuration.

5. **Set Up Validators**: Use the `setup_validators.sh` script to configure your validators and start participating in the network.

6. **Start the Network**: Follow the instructions in the `prysm` and `lighthouse` directories to start the beacon chain and validator clients.

## Documentation

For detailed instructions on using each component, refer to the README files located in the respective directories:

- [Prysm Documentation](prysm/README.md)
- [Lighthouse Documentation](lighthouse/README.md)
- [Genesis Block Documentation](genesis/README.md)

## Contributing

Contributions are welcome! Please submit a pull request or open an issue for any enhancements or bug fixes.

## License

This project is licensed under the MIT License. See the LICENSE file for more details.