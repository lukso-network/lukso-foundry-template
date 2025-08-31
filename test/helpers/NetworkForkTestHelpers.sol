// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test} from "forge-std/Test.sol";

contract NetworkForkTestHelpers is Test {
    uint256 luksoNetworkFork;

    // setup fork environnement
    function _useMainnetForkEnvironment() internal {
        // load from the .env file or set to Thirdweb as default
        string memory customMainnetRpcURL = vm.envString(
            "LUKSO_MAINNET_RPC_URL"
        );

        luksoNetworkFork = bytes(customMainnetRpcURL).length != 0
            ? vm.createFork(customMainnetRpcURL)
            : vm.createFork("https://42.rpc.thirdweb.com");

        vm.selectFork(luksoNetworkFork);
        assertEq(vm.activeFork(), luksoNetworkFork);
    }
}
