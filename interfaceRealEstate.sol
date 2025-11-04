// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

interface interfaceReal {
    function getTime(uint256 _index) external returns (uint256);

    function payTransfer(address user, uint256 _index) external payable;

    function approveClient(uint256 _index, address client, bool approved) external;

    function getRealFromOracle(uint256 _index)
    external
    view
    returns(
        address owner,
        string memory model,
        uint256 valueRealEstate,
        address broker,
        uint256 comission,
        address realEstateAddr,
        uint256 balance
    );

    event realEstateAddr(address _idAddress); // Eventos podem ser criados em interfaces
    event paySuccess(uint256 _value, uint256 time);
}