// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {Test} from "forge-std/Test.sol";
import {Greeter} from "../src/Greeter.sol";

contract GreeterTest is Test {
    Greeter public greeter;
    
    function setUp() public {
        greeter = new Greeter("Hello, Test!");
    }
    
    function test_InitialGreeting() public {
        assertEq(greeter.greet(), "Hello, Test!");
    }
    
    function test_SetGreeting() public {
        greeter.setGreeting("New greeting!");
        assertEq(greeter.greet(), "New greeting!");
    }
}
