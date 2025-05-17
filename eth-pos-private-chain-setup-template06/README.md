# Ethereum PoS Private Chain Setup

This project provides a complete setup for running an Ethereum Proof of Stake (PoS) private chain using Prysm and Lighthouse clients. It includes all necessary components to generate the genesis block, deploy contracts, and manage validators.

## Project Structure

- **eth-pos-private-chain-setup**: Root directory for the Ethereum PoS private chain setup.
  
- **prysm**: Contains files related to the Prysm client.
  - **beacon-chain**: Contains Prysm beacon chain binaries and configurations.
  - **validator**: Contains Prysm validator binaries and configurations.
  - **scripts/start.sh**: Script to start the Prysm beacon chain and validator.

- **lighthouse**: Contains files related to the Lighthouse client.
  - **lighthouse**: Contains Lighthouse binaries and configurations.
  - **scripts/start.sh**: Script to start the Lighthouse beacon chain and validator.

- **genesis**: Contains files related to the genesis block setup.
  - **deposit_contract.sol**: Solidity smart contract for the deposit contract.
  - **generate_genesis.sh**: Script to generate the genesis block configuration.
  - **genesis.ssz**: Serialized genesis state in SSZ format.
  - **config.yaml**: YAML configuration file for the genesis block.

- **geth**: Contains files related to the Geth client.
  - **genesis.json**: Genesis configuration file for the Geth client.
  - **geth.sh**: Script to start the Geth client.
  - **scripts/deploy_contract.sh**: Script to deploy the deposit contract to the Ethereum network.

- **validators**: Contains files related to validator keys and deposits.
  - **keys**: Directory for validator keys.
  - **deposits/deposit_data.json**: JSON file containing deposit data for the validators.

- **docker-compose.yml**: Defines and runs multi-container Docker applications for the setup.

## Getting Started

1. **Clone the Repository**: Clone this repository to your local machine.
   
   ```bash
   git clone <repository-url>
   cd eth-pos-private-chain-setup
   ```

2. **Install Dependencies**: Ensure you have Docker and Docker Compose installed on your machine.

3. **Generate Genesis Block**: Navigate to the `genesis` directory and run the script to generate the genesis block.

   ```bash
   cd genesis
   ./generate_genesis.sh
   ```

4. **Start the Network**: Use Docker Compose to start the entire setup.

   ```bash
   cd ..
   docker-compose up
   ```

5. **Run Prysm or Lighthouse**: Depending on your choice of client, navigate to the respective directory and run the start script.

   For Prysm:
   ```bash
   cd prysm/scripts
   ./start.sh
   ```

   For Lighthouse:
   ```bash
   cd ../../lighthouse/scripts
   ./start.sh
   ```

## Contributing

Contributions are welcome! Please feel free to submit a pull request or open an issue for any enhancements or bug fixes.

## License

This project is licensed under the MIT License. See the LICENSE file for more details.