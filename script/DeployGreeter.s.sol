// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {Script} from "forge-std/Script.sol";
import {Greeter} from "../src/Greeter.sol";

contract DeployGreeter is Script {
    function run() external returns (Greeter) {
        vm.startBroadcast();
        
        Greeter greeter = new Greeter("Hello, Open Campus!");
        
        vm.stopBroadcast();
        return greeter;
    }
}
