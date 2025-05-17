# Ethereum PoS Private Chain Setup - Deposit CLI

This directory contains tools for generating deposit data for the Ethereum Proof of Stake (PoS) network using the Prysm client.

## Overview

The deposit CLI tool is used to create deposit data for validators who wish to participate in the Ethereum 2.0 network. This data is essential for registering validators and enabling them to propose and attest to blocks on the beacon chain.

## Installation

To use the deposit CLI tool, ensure you have the following prerequisites installed:

- Go programming language (version 1.16 or later)
- Prysm client

Clone the Prysm repository and navigate to the deposit-cli directory:

```bash
git clone https://github.com/prysmaticlabs/prysm.git
cd prysm/deposit-cli
```

## Usage

To generate deposit data, run the following command:

```bash
go run main.go <options>
```

### Options

- `--amount`: The amount of ETH to deposit (default is 32 ETH).
- `--validator-keys`: Path to the file containing validator keys.
- `--output`: Path to the output file for the deposit data.

### Example

```bash
go run main.go --amount 32 --validator-keys keys.json --output deposit_data.json
```

This command generates deposit data for a 32 ETH deposit using the validator keys specified in `keys.json` and saves the output to `deposit_data.json`.

## Additional Resources

For more information on the Prysm client and Ethereum 2.0, visit the official documentation:

- [Prysm Documentation](https://docs.prylabs.network/)
- [Ethereum 2.0 Documentation](https://ethereum.org/en/eth2/)

## License

This project is licensed under the MIT License. See the LICENSE file for more details.