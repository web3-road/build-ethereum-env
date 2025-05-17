# Geth Execution Layer Setup and Usage

This document provides instructions on how to set up and run the Geth execution layer for the Ethereum 2.0 private chain.

## Prerequisites

- Go Ethereum (Geth) installed on your machine.
- A configured `genesis.json` file located in this directory.
- Access to the deposit contract deployed on the Ethereum network.

## Configuration

1. **Edit `genesis.json`:** Ensure that the `genesis.json` file is correctly configured with the necessary parameters for your private chain. This includes setting the appropriate chain ID and initial balances.

2. **Deposit Contract Address:** Make sure to specify the deposit contract address in your configuration files where required.

## Running Geth

To start the Geth execution layer, use the following command:

```bash
geth --datadir <path_to_data_directory> init genesis.json
geth --datadir <path_to_data_directory> --networkid <your_network_id> --http --http.port 8545 --http.api admin,eth,net,web3,personal --mine --miner.threads=1
```

Replace `<path_to_data_directory>` with the path where you want to store the blockchain data and `<your_network_id>` with your desired network ID.

## Interacting with Geth

Once Geth is running, you can interact with it using the Geth JavaScript console. To attach to the running instance, use:

```bash
geth attach http://127.0.0.1:8545
```

You can check the current block number with:

```javascript
eth.blockNumber
```

## Troubleshooting

- If you encounter issues with transactions being pending, ensure that the deposit contract is deployed and the address is correctly configured in your setup.
- Check the logs for any errors related to the execution layer or the consensus layer.

## Additional Resources

- [Geth Documentation](https://geth.ethereum.org/docs/)
- [Ethereum 2.0 Documentation](https://ethereum.org/en/eth2/)
- [Prysm Documentation](https://docs.prylabs.network/)

This README should help you get started with the Geth execution layer for your Ethereum 2.0 private chain.