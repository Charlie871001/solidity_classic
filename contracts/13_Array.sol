// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Array {
    // Several ways to initialize an array
    uint256[] public arr;
    uint256[] public arr2 = [1,2,3];
    // Fixed sized array, all elements initialize to 0.
    uint256[10] public myFixedSizeArray;

    function get(uint256 i) public view returns (uint256) {
        return arr[i];
    }
    // Solidity can return the entire array.
    // But this function should be avoided for arrays that can grow indefinitely in length.
    function getArr() public view returns (uint256[] memory) {
        return arr;
    }

    function push(uint256 i) public  {
        // Append to array
        // This will increase the array length by 1.
        arr.push(i);
    }

    function pop() public  {
        // Remove last element from array
        // This will decrease the array length by 1.
        arr.pop();
    }

    function getLength() public view returns (uint256) {
        return arr.length;
    }

    function remove(uint256 index) public  {
        // Delete does not change the array length.
        // It resets the value at index to it's default value, in this case 0.
        delete arr[index];
    }

    function example() external pure  {
        // Create array in memory, only fixed size array can be created.
        uint256[] memory u = new uint256[](2);
        u[1] = 1;
    }

}