// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract funcoesExemplo {
    uint256 public numero;
    string public nome;
    string public mensagem;
    
    uint256 valor;

    function subNum(uint256 _numerodiv) internal {
        uint256 divNumero = _numerodiv / 2;
        numero = divNumero;
    }

    function setMsg(string memory _msg) public {
        mensagem = _msg;
    }

    function setNomeNum(string memory _meunome, uint256 _numero) external {
        nome = _meunome;
        subNum(_numero);
        setMsg("chamou pelo contrato");
    }

    function setValor(uint256 _valor) external {
        valor = _valor;
    }

    function getValor() external view returns (uint256) {
        return valor;
    }

    function multiplicar(uint256 x, uint256 y) external pure returns (uint256) {
        uint256 valorMultiplicacao = x * y;
        return valorMultiplicacao;
    }

    function payEther() external payable { }
}