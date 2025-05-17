# Lighthouse Documentation

Lighthouse is a client for the Ethereum 2.0 network, designed to be efficient and easy to use. This README provides an overview of the installation process, configuration details, and usage guidelines for setting up and running Lighthouse in an Ethereum Proof of Stake (PoS) private chain environment.

## Installation

To install Lighthouse, follow these steps:

1. **Install Rust**: Lighthouse is built using Rust. You can install Rust by following the instructions at [rustup.rs](https://rustup.rs/).

2. **Clone the Lighthouse Repository**:
   ```bash
   git clone https://github.com/sigp/lighthouse.git
   cd lighthouse
   ```

3. **Build Lighthouse**:
   ```bash
   cargo build --release
   ```

4. **Install Lighthouse**:
   After building, you can install Lighthouse using:
   ```bash
   cargo install --path .
   ```

## Configuration

Lighthouse requires specific configuration settings to operate correctly. The configuration file `testnet-spec.yaml` located in the `config` directory contains parameters for the testnet specifications. You can modify this file to suit your network requirements.

### Example Configuration

```yaml
# Example configuration for Lighthouse
network:
  name: "my-private-chain"
  bootnodes:
    - "enr:-..."
```

## Genesis State

The `genesis.ssz` file in the `config` directory contains the serialized genesis state for the Lighthouse blockchain. This file defines the initial state of the blockchain and should be generated using the provided scripts.

## Scripts

### Generate Genesis

The `generate_genesis.sh` script automates the process of generating the genesis file for the Lighthouse client. To run the script, execute the following command:

```bash
bash scripts/generate_genesis.sh
```

This will create the necessary genesis state and update the `genesis.ssz` file accordingly.

## Usage

Once Lighthouse is installed and configured, you can start the beacon node using the following command:

```bash
lighthouse bn --network my-private-chain
```

Make sure to replace `my-private-chain` with the name of your configured network.

## Additional Resources

For more detailed information, refer to the official Lighthouse documentation at [Lighthouse Documentation](https://lighthouse-book.sigmaprime.io/).