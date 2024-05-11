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

    bool public  permissao;
    address public contaRegistrada;
    string public nome;
    bytes public Meusbytes;

    function mudarpermissao(bool _trueouFalse) external {
        permissao = _trueouFalse;
    }

    function RegistrarEndereco(address _endereco) external {
        contaRegistrada = _endereco;
    }

    function registrarmeuendereco(string memory _meunome)external {
        contaRegistrada = msg.sender;
        nome = _meunome;
    }


    function armazenarDados (bytes memory _dados) public {
    Meusbytes = _dados;
    }

    function convertStringBytes(string memory _minhafrase) external pure returns (bytes32) {
        bytes32 minhafrase = bytes32(bytes(_minhafrase));
        return minhafrase;
    }

    function obterTamanhoDados() public view returns (uint256) {
        return Meusbytes.length;
    }

    function inseriMaxuint(uint8 _numero)external {
        testeLimit = _numero;
    }

    function inserirNumero(uint256 _numero)external {
        numero = _numero;
    }

    function testNegativo( int256 _numero) external view returns (int256) {
        int256 NumNegativo = _numero;

        int256 somaDosNegativos = negativo - NumNegativo;
        return(somaDosNegativos);
    }
}
