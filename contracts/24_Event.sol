// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Event {
    event Log(address indexed sender, string message);
    event AnotherLog();

    function test() public {
        emit Log(msg.sender,"hello");
        emit Log(msg.sender,"evm");
        emit AnotherLog();
    }
}