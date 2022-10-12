// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract RentDeposit {

    uint public rent;
    address payable landlord;

    event Rent(bool paid, string indexed name);

    constructor () {
        rent = 1 ether;
        landlord = payable(msg.sender);
    }

    function payRent(string memory _name) external payable{
        require(msg.value == rent, "Pay whole rent!");
        emit Rent(true, _name);
    }

    function changeRent(uint _newEthRent) external onlyLandlord{
        rent = _newEthRent * 1 ether;
    }

    function withdrawFunds() external payable onlyLandlord{
        landlord.transfer(address(this).balance);
    }

    modifier onlyLandlord {
        _;
        require(msg.sender == landlord, "Only landlord can run this function");
    }

}