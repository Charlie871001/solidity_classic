// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Immutable {
    // coding convention to uppercase immutable variables
    address public immutable MY_ADDRESS;
    uint256 public immutable MY_UINT;
    constructor(uint256 myUint) {
        MY_ADDRESS = msg.sender;
        MY_UINT = myUint;
    }
    
}