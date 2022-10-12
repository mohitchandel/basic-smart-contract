// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StoreNumber {
    uint theNumber;

    function storeNumber(uint _number) external {
        theNumber = _number;
    }

    function getNumber() external view returns(uint){
        return theNumber;
    }

    function setAndGet(uint _number) external pure returns(uint){
        uint num = _number;
        return num;
    }
}