// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract SimpleStorage {
    // State variable to store a number
    uint256 public num;
    // You need to send a trasaction to writer to a state variable
    function set(uint256 _num) public  {
        num = _num;
    }
    // You can read from a state variable without sending a trasaction
    function get() public view returns (uint256) {
        return num;
    }
}