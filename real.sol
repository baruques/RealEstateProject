// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./oracleRealEstate.sol";
import "./interfaceRealEstate.sol";
import "./libraryMath.sol";

contract RealEstateCorporate is interfaceReal { // Está pedindo para que eu faça deste contrato um contato abstrato, ver amanhã!
    using Math for uint256;

    oracleRealEstate[] public oracleRealEstates;
    mapping(address => bool) approved;

    function createNewOracle(
        address _owner,
        string memory _model,
        uint256 _valueRealEstate,
        address _broker,
        uint256 _commission,
        uint256 _timePay
    ) external {
        oracleRealEstate realestate = new oracleRealEstate;
        oracleRealEstates.push(realestate);
    }
}
