// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract OPeradores{
    uint256 valor;




    function calcularMedia(uint256 a, uint256 b)public pure returns (uint256){
        uint256 media = (a + b) /2;
        return media;
    }

    function multiplicacao(uint256 a, uint256 b) public pure returns(uint256){
        uint256 media = (a + b) *2;
        return media;
    }

    function verificarVerdadeiro(bool a, bool b) public pure returns(bool){
        bool resultado = a && b;
        return resultado;
    }

     function verificarCondicional(bool a, bool b) public pure returns(bool){
        bool resultado = a || b;
        return resultado;
    }

    function verificarMaior(uint256 a, uint256 b) public pure returns(bool){
        bool resultado = a > b;
        return resultado;
    }

    function verificarIgual(uint256 a, uint256 b) public pure returns(bool){
        bool resultado = a == b;
        return resultado;
    }

    function verificarSeDiferente(uint256 a, uint256 b) public pure returns(bool){
        bool resultado = a != b;
        return resultado;
    }

    function setValor(uint256 novoValor) public {
        if (novoValor >= 10) {
            valor = novoValor;
            } else {
            valor = 0;
        }
    }

    function getValor() public view returns (uint256) {
        return valor;
    }

}