// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract errorProjectTest {
    function assertErrorFunction(uint _value) external pure returns (uint) {
        assert(_value > 0);
        return _value;
    }

    function requireErrorFunction(uint _value) external pure returns (uint) {
        require(_value > 10, "value should be greater than 10");
        return _value;
    }

    function revertErrorFunction(uint _value) external pure returns (uint) {
        if (_value < 10) revert("value less than 10 Input the correct value");
        return _value;
    }
}
