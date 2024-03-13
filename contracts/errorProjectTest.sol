// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract funcErrors {
    string public message;

    constructor(string memory _initialMessage) {
        require(bytes(_initialMessage).length > 0, "Initial message must not be empty");
        message = _initialMessage;
    }

    function setMessage(string memory _newMessage) public {
        require(bytes(_newMessage).length > 0, "New message must not be empty");
        message = _newMessage;
    }

    function getMessage() public view returns (string memory) {
        return message;
    }

    function assertExample(uint256 _value) public pure returns (uint256) {
        // Ensure value is greater than 0 using assert
        assert(_value > 0);
        return _value;
    }

    function requireExample(uint256 _value) public pure returns (uint256) {
        // Ensure value is greater than 10 using require
        require(_value > 10, "Value should be greater than 10");
        return _value;
    }

    function revertExample(uint256 _value) public pure returns (uint256) {
        // Ensure value is less than 100 using revert
        if (_value >= 100) {
            revert("Value must be less than 100");
        }
        return _value;
    }
}
