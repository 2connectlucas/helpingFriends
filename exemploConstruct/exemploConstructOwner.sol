// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract construct{
    string public nome;
    uint256 immutable idade;

    address constant owner = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    constructor(string memory _nome, uint256 _idade){
        nome = _nome;
        idade = _idade;
    }

    function setNome(string memory _newName) external {
        require(msg.sender == owner, "Somente o dono pode alterar o nome");
        nome = _newName;
    }
}