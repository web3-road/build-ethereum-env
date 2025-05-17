# Ethereum PoS Private Chain Setup

This project provides a comprehensive setup for creating and managing an Ethereum Proof of Stake (PoS) private chain using Prysm and Lighthouse tools. It includes all necessary configurations, scripts, and documentation to facilitate the deployment and operation of a private Ethereum network.

## Project Structure

- **prysm/**: Contains all files related to the Prysm client, including configuration and scripts for generating the genesis state.
- **lighthouse/**: Contains all files related to the Lighthouse client, including configuration and scripts for generating the genesis state.
- **geth/**: Contains files related to the Geth client, including the genesis configuration and initialization scripts.
- **deposit-contract/**: Contains the Solidity code for the deposit contract and scripts for deployment.
- **validators/**: Contains documentation and keys for validator setup.
- **docs/**: Contains a detailed setup guide for configuring and running the Ethereum PoS private chain.

## Setup Instructions

1. **Clone the Repository**: 
   Clone this repository to your local machine using:
   ```
   git clone <repository-url>
   ```

2. **Install Dependencies**:
   Ensure you have the necessary dependencies installed for Prysm, Lighthouse, and Geth. Refer to the respective README files in the `prysm`, `lighthouse`, and `geth` directories for detailed installation instructions.

3. **Generate Genesis State**:
   - For Prysm:
     Navigate to the `prysm/scripts` directory and run:
     ```
     ./generate_genesis.sh
     ```
   - For Lighthouse:
     Navigate to the `lighthouse/scripts` directory and run:
     ```
     ./generate_genesis.sh
     ```

4. **Initialize Geth**:
   Navigate to the `geth/scripts` directory and run:
   ```
   ./init_geth.sh
   ```

5. **Deploy Deposit Contract**:
   Navigate to the `deposit-contract/scripts` directory and run:
   ```
   ./deploy_contract.sh
   ```

6. **Start Validators**:
   Follow the instructions in the `validators/README.md` to set up and start your validators.

## Usage Guidelines

- Refer to the individual README files in each directory for specific usage instructions and configuration details.
- Consult the `docs/setup_guide.md` for a comprehensive guide on setting up and running your Ethereum PoS private chain.

## Contributing

Contributions are welcome! Please submit a pull request or open an issue for any enhancements or bug fixes.

## License

This project is licensed under the MIT License. See the LICENSE file for more details.