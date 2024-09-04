// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Test.sol";
import "../src/ketai/Challenge.sol";

contract KetaiTest is Test {
    Challenge public challenge;

    function setUp() public {
        // deploy pancakeswap factory and router
        PancakeFactory factory = new PancakeFactory(address(this));
        PancakeRouter router = new PancakeRouter(address(factory), address(0));

        challenge = new Challenge(factory, router);
    }
}
