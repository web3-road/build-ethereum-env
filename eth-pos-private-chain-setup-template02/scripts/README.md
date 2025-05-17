# Ethereum PoS Private Chain Setup Scripts

This directory contains shell scripts that automate various tasks related to the Ethereum Proof of Stake (PoS) private chain setup. Below is a brief description of the scripts included in this directory:

## Scripts

### generate_genesis.sh
This script is responsible for generating the genesis block for the Ethereum PoS private chain. It utilizes the configuration files located in the `genesis` directory to create the necessary genesis state.

### deploy_contract.sh
This script deploys the deposit contract to the Ethereum blockchain. It ensures that the contract is correctly deployed and ready for use in the PoS network.

## Usage
To use these scripts, ensure that you have the necessary permissions and dependencies installed. You can execute the scripts from the command line as follows:

```bash
./generate_genesis.sh
./deploy_contract.sh
```

Make sure to review the individual script files for any additional parameters or configurations that may be required.