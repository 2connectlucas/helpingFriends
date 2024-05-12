// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;


contract OpcodeGas{

    function somaEmsolidity(uint256 a, uint256 b)
    external pure returns(uint256){
        uint256 soma = a + b;
        return soma;
    }


    function somaEmOpcode(uint256 a, uint256 b)
    external pure returns(uint256 result){

        assembly{
            result := add(a, b)
        }

        return result;
    }
}