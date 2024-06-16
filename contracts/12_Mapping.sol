// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Mapping {
    // Mapping from address to uint.
    mapping(address => uint256) public myMap;

    function get(address _addr) public view  returns (uint256){
        // Mapping always returns a value.
        // If the value was never set, it will return the default value.
        return myMap[_addr];
    }

    function set(address _addr, uint256 _i) public  {
        // Update the value at this address
        myMap[_addr] = _i;
    }

    function remove(address _addr) public  {
        delete myMap[_addr];
    }

}

contract NestedMapping {
    // Nested mapping from address to another mapping
    mapping(address =>mapping (uint256 => bool)) public nested;

    function get(address _addr,uint256 _i) public view returns (bool) {
        // You can get values from a nested mapping
        // even when it is not initialized
        return nested[_addr][_i];
    }

    function set(address _addr,uint256 _i,bool _b) public {
        nested[_addr][_i] = _b;
    } 

    function remove(address _addr,uint256 _i) public {
        delete nested[_addr][_i];
    }

}