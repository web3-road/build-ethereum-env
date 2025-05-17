# Prysm Client Setup

This directory contains the components related to the Prysm client, which is essential for participating in the Ethereum Proof of Stake (PoS) network.

## Directory Structure

- **deposit-cli**: Command-line interface for handling deposits to the Ethereum 2.0 network.
- **beacon-chain**: Implementation of the beacon chain, responsible for coordinating the PoS network.
- **validator**: Validator client that allows you to participate in the network by proposing and attesting to blocks.

## Getting Started

1. **Install Dependencies**: Ensure you have Go installed on your machine. You can download it from [golang.org](https://golang.org/dl/).

2. **Clone the Repository**: Clone this repository to your local machine.

   ```bash
   git clone https://github.com/your-repo/eth-pos-private-chain-setup.git
   cd eth-pos-private-chain-setup/prysm
   ```

3. **Build the Prysm Components**: Navigate to each component directory and build the binaries.

   ```bash
   cd deposit-cli
   go build
   cd ../beacon-chain
   go build
   cd ../validator
   go build
   ```

4. **Configuration**: Before running the Prysm components, ensure you have the correct configuration in place. Refer to the respective README files in each component directory for detailed instructions.

5. **Running the Clients**: Start the beacon chain and validator clients using the following commands:

   ```bash
   # Start the beacon chain
   ./beacon-chain --config config.yaml

   # Start the validator
   ./validator --config config.yaml
   ```

## Additional Resources

- [Prysm Documentation](https://docs.prylabs.network/)
- [Ethereum 2.0 Specifications](https://github.com/ethereum/eth2.0-specs)

For any issues or contributions, please refer to the main repository or open an issue in this directory.