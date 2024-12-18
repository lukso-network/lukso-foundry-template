// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {ExampleLSP7Token} from "../src/ExampleLSP7Token.sol";

contract DeployScript is Script {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        new ExampleLSP7Token("Example Token", "TKN", msg.sender, false);

        vm.stopBroadcast();
    }
}
