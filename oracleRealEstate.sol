// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract oracleRealEstate {
    address public owner;
    string public model;
    uint256 public valueRealEstate;
    address public broker;
    uint256 public immutable commission;
    uint256 public timePay;

    address public realEstateAddr;

    constructor(
        address _owner,
        string memory _model,
        uint256 _valueRealEstate,
        address _broker,
        uint256 _commission,
        uint256 _timePay
    ) payable {
        owner = _owner;
        model = _model;
        valueRealEstate = _valueRealEstate;
        broker = _broker;
        commission = _commission;
        timePay = _timePay;

        realEstateAddr = address(this);
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "not owner");
        _;
    }

    function newTimePay(uint256 _newTimePay) external onlyOwner {
        timePay = _newTimePay;
    }
}