// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.21;

contract Challenge {
    address public r;

    constructor(address) {
        bytes memory code =
            hex"608060405234801561001057600080fd5b5061011d806100206000396000f3fe6080604052348015600f57600080fd5b5060043610602d5760003560e01c8015603257806364d98f6e14603a575b600080fd5b6038605a565b005b60005460469060ff1681565b604051901515815260200160405180910390f35b5a602060006020818283843388f15060045b333b81121560a6578283838485335af160021c51835181108015609357604084208452609d565b6040828152852084525b5050600201606c565b507f58898ce26697138ee057566d1fcfbcf1384f625d0aa51e80fbc9c44e6cd8a65881510360d357600181555b6160ff5a8403111560e2578081555b50505056fea26469706673582212207a0964c9fb7e33d9e5fb6dc6c17d84280dbbfabeb4429f2206529aca0a65122264736f6c63430008170033";
        assembly {
            sstore(r.slot, create(0, add(code, 0x20), mload(code)))
        }
    }

    function isSolved() public returns (bool) {
        return Challenge(r).isSolved();
    }
}
