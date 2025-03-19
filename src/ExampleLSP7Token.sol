// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.17;

// Modules
import {LSP7DigitalAsset as LSP7} from "@lukso/lsp7-contracts/contracts/LSP7DigitalAsset.sol";
import {LSP7Burnable} from "@lukso/lsp7-contracts/contracts/extensions/LSP7Burnable.sol";

// Constants
import {_LSP4_TOKEN_TYPE_TOKEN} from "@lukso/lsp4-contracts/contracts/LSP4Constants.sol";

/// @dev Basic Example of an LSP7 Token to get started
/// Technical Specification:  https://github.com/lukso-network/LIPs/blob/main/LSPs/LSP-7-DigitalAsset.md
/// Documentation: https://docs.lukso.tech/contracts/overview/Token/create-token
contract ExampleLSP7Token is LSP7, LSP7Burnable {
    constructor(
        string memory name,
        string memory symbol,
        address contractOwner,
        bool isNonDivisible // whether the token should be divisible (18 decimals) or not (0
    )
        // decimals)
        LSP7(name, symbol, contractOwner, _LSP4_TOKEN_TYPE_TOKEN, isNonDivisible)
    {
        // mint all the tokens to the deployer, who can then distribute them using `transfer(...)`
        _mint(msg.sender, 10_000_000 * 10 ** decimals(), true, "0x");
    }

    // Your custom token contract logic here...
}
