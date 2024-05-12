// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract mappingb2bArray {
    mapping(address => uint256) public balances;
    mapping(address => bool) public inserido;
    address[] public contas;


    function set(address _conta, uint256 _val) external {
        balances[_conta] = _val;
        inserido[_conta] = true;
        contas.push(_conta);
    }

    function getSize() external view returns (uint256) {
        return contas.length;
    }

    function first() external view returns (uint256) {
        return balances[contas[0]];
    }

    function last() external view returns (uint256) {
        return balances[contas[contas.length - 1]];     
    }
}   