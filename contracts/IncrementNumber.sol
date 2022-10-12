// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract IncrementNumber {
    uint count;

    event Invoke(address indexed _from, string indexed _msg);

    function invoke() external {
        count = count + 1;
        emit Invoke(msg.sender, "You just add 1 in count");
    }

    function getCount() external view returns(uint){
        return count;
    }
}