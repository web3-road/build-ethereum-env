# Deposit CLI Tool for Prysm

The Deposit CLI tool is an essential component for managing deposits in the Prysm ecosystem. This tool allows users to create and manage validator deposits, which are crucial for participating in the Ethereum Proof of Stake (PoS) network.

## Installation

To install the Deposit CLI tool, follow these steps:

1. Clone the Prysm repository:
   ```
   git clone https://github.com/prysmaticlabs/prysm.git
   cd prysm
   ```

2. Build the Deposit CLI tool:
   ```
   go build -o deposit-cli ./deposit-cli
   ```

3. Ensure that the binary is in your PATH or move it to a directory of your choice.

## Usage

To use the Deposit CLI tool, you can run the following command:

```
./deposit-cli [options]
```

### Options

- `--help`: Display help information about the command.
- `--validator-keys`: Specify the path to the validator keys.
- `--deposit-amount`: Set the amount to deposit (in ETH).
- `--network`: Choose the network (mainnet, testnet, etc.).

### Example

To create a deposit for a validator, you can use the following command:

```
./deposit-cli --validator-keys /path/to/validator-keys --deposit-amount 32 --network mainnet
```

## Additional Information

For more detailed information on the Deposit CLI tool and its options, please refer to the official Prysm documentation or the GitHub repository.

## Troubleshooting

If you encounter any issues while using the Deposit CLI tool, please check the following:

- Ensure that you have the correct version of Go installed.
- Verify that your validator keys are correctly formatted and accessible.
- Check the network settings to ensure you are connected to the correct Ethereum network.

For further assistance, consider reaching out to the Prysm community or checking the issue tracker on GitHub.