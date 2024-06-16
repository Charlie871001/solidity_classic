// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

// An error will undo all changes made to the state during a trasaction.
contract Error {
    // You can thrwo an error by calling require,revert or assert.
    // require is used to validate inputs and conditions before execution.
    // revert is similar to require. See the code below for details. 
    // assert is used to check for code that should never be false. 
    // Falling assertion probably means that there is a bug. 
    function testRequire(uint256 _i) public pure {
        // Requrie should be used to validate conditions such as:
        // -inputs
        // -conditions before execution
        // -return values from calls to other functions
        require(_i > 10, "Input must be greater than 10");
    }

    function testRevert(uint256 _i) public pure {
        // Revert is useful when the condition to check is complex.abi
        // This code does the same thing as the example above.
        if (_i <= 10) {
            revert("Input must be greater than 10");
        }
    }

    uint256 public num;
    function testAssert() public view {
        assert(num == 0);
    }

    // Custom error
    error InsufficientBalance(uint256 balance, uint256 withdrawAmount);

    function testCustomError(uint256 _withdrawAmount) public view {
        uint256 bal = address(this).balance;
        if (bal < _withdrawAmount) {
            revert InsufficientBalance({
                balance: bal,
                withdrawAmount: _withdrawAmount
            });
        }
        
    }

}