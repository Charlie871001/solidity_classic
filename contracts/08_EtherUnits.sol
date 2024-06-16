// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract EtherUnits {
    uint256 public oneWei = 1 wei;
    // 1 wei is equal to 1.
    bool public isOneWei = (oneWei == 1);

    // 1 gwei is equal to 10^9 wei.
    uint256 public oneGwei = 1 gwei;
    bool public isOneGwei = (oneGwei == 1e9);

    // 1 ether is equal to 10^18 wei.
    uint256 public oneEther = 1 ether;
    bool public isOneEther = (oneEther == 1e18);
}