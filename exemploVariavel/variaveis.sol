// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Exemplovariavel{
    //primeiro exemplo de váriaveis

    uint8 public maxPermit = 255;
    uint8 public testeLimit;
    int256 public negativo = -1;
    uint256 public numero;
    int256 public numeroNegativo;

    //segundo exemplo:

    function inseriMaxuint(uint8 _numero)external {
        testeLimit = _numero;
    }

    function inserirNumero(uint256 _numero)external {
        numero = _numero;
    }

    function testNegativo( int256 _numero) external view returns(int256) {
        int256 NumNegativo = _numero;

        int256 somaDosNegativos = negativo - NumNegativo;
        return(somaDosNegativos);
    }
}