# LUKSO - Foundry Template

Forge/Foundry project template to get started developing contracts from [`@lukso/lsp-smart-contracts`](https://github.com/lukso-network/lsp-smart-contracts).



## Overview

- ⚒️ Ready to use Foundry environnement with the `@lukso/lsp-smart-contracts` dependencies to get started quickly building contracts using the LUKSO LSP Smart Contracts.

## Getting started

1. Click the **"Use this template"** button from this repo's home page to create a repository based on this template.

1. **Pre-requisites**:
   - Install the [**`bun`** package manager](https://bun.sh/package-manager).
   - [Install foundry](https://getfoundry.sh/).

2. Install the dependencies

```bash
forge install
bun install
```

You can now get started building!

## Development

### Add new packages

You can install new packages and dependencies using **`bun`** or Foundry.

```bash
bun add @remix-project/remixd
```

### Build

To generate the artifacts (contract ABIs and bytecode), simply run:

```shell
bun run build
```

The contract ABIs will placed under the `artifacts/` folder.

### Test

```shell
bun run test
```

### Format Solidity code

```shell
bun run format
```

The formatting rules can be adjusted in the [`foundry.toml`](./foundry.toml) file, under the `[fmt]` section.

<!-- ### Gas Snapshots

```shell
forge snapshot
``` -->

<!-- ### Anvil

```shell
$ anvil
```
-->

### Deploy + verify contracts

The folder `script/` provide a script to deploy contracts. 

1. Create a `.env` file, copy-paste inside the content of [`.env.example`](./.env.example)  and add your private key you will use to deploy.

2. Run the following commands to deploy

```shell
# load the variables from the .env file
source .env

# Deploy and verify contract on LUKSO Testnet.
forge script --chain 4201 script/deploy.s.sol:DeployScript --rpc-url $LUKSO_TESTNET_RPC_URL --broadcast --verify --verifier blockscout --verifier-url $BLOCKSCOUT_TESTNET_API_URL -vvvv

# Deploy and verify contract on LUKSO Mainnet.
forge script --chain 42 script/deploy.s.sol:DeployScript --rpc-url $LUKSO_MAINNET_RPC_URL --broadcast --verify --verifier blockscout --verifier-url $BLOCKSCOUT_MAINNET_API_URL -vvvv
```

<!-- ### Cast

```shell
$ cast <subcommand>
``` 
-->

### Help

You can run the following commands to see easily the available options with `forge`, `anvil` and `cast`.

```shell
forge --help
anvil --help
cast --help
```


## Documentation

This template repository is based on Foundry, **a blazing fast, portable and modular toolkit for EVM application development written in Rust.** It includes:

-   **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
-   **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
-   **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
-   **Chisel**: Fast, utilitarian, and verbose solidity REPL.

You can find more documentation at: https://book.getfoundry.sh/
