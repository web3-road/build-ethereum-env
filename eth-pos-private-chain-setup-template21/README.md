# Ethereum PoS Private Chain Setup

This project provides a comprehensive setup for creating and managing an Ethereum Proof of Stake (PoS) private chain. It includes tools for both Prysm and Lighthouse, which are essential for running a PoS network, as well as scripts for managing the genesis block and validators.

## Project Structure

```
eth-pos-private-chain-setup
├── prysm
│   ├── README.md          # Instructions for using Prysm
│   ├── scripts
│   │   └── start-prysm.sh # Script to start the Prysm beacon node and validator
│   └── config.yaml        # Configuration settings for Prysm
├── lighthouse
│   ├── README.md          # Instructions for using Lighthouse
│   ├── scripts
│   │   └── start-lighthouse.sh # Script to start the Lighthouse beacon node and validator
│   └── config.yaml        # Configuration settings for Lighthouse
├── genesis
│   ├── README.md          # Instructions for creating the genesis block
│   ├── deposit_contract.sol # Implementation of the deposit contract
│   ├── create_genesis.sh  # Script to create the genesis block
│   └── genesis.ssz        # Serialized genesis state
├── go-ethereum
│   ├── README.md          # Instructions for using Geth
│   ├── genesis.json       # Genesis configuration for Geth
│   └── start-geth.sh      # Script to start the Geth client
├── validators
│   ├── deposit_data.json   # Deposit data for validators
│   └── keys
│       └── keystore-m_12345_67890_0_0_0.json # Keystore for a validator
├── scripts
│   └── full-setup.sh       # Script to automate the full setup process
```

## Setup Instructions

1. **Clone the Repository**: Start by cloning this repository to your local machine.
   
   ```bash
   git clone <repository-url>
   cd eth-pos-private-chain-setup
   ```

2. **Install Dependencies**: Ensure you have all necessary dependencies installed for Prysm, Lighthouse, and Geth.

3. **Configure Prysm and Lighthouse**: Modify the `config.yaml` files in the `prysm` and `lighthouse` directories to suit your network parameters and preferences.

4. **Create Genesis Block**: Use the `create_genesis.sh` script in the `genesis` directory to generate the genesis block.

   ```bash
   cd genesis
   ./create_genesis.sh
   ```

5. **Start the Beacon Nodes**: Use the provided scripts to start the Prysm and Lighthouse beacon nodes.

   ```bash
   cd prysm/scripts
   ./start-prysm.sh

   cd ../../lighthouse/scripts
   ./start-lighthouse.sh
   ```

6. **Start Geth**: Use the `start-geth.sh` script in the `go-ethereum` directory to start the Geth client.

   ```bash
   cd ../go-ethereum/scripts
   ./start-geth.sh
   ```

7. **Validator Setup**: Ensure that your validators are properly configured with the necessary deposit data and keys.

8. **Full Setup Automation**: Optionally, you can run the `full-setup.sh` script in the `scripts` directory to automate the entire setup process.

## Usage

Once everything is set up, you can interact with your Ethereum PoS private chain using the respective tools. Follow the instructions in the individual README files for Prysm, Lighthouse, and Geth for more detailed usage information.

This setup provides a robust foundation for experimenting with Ethereum's PoS mechanism in a controlled environment.