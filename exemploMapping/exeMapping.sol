// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract NovaTurmaMapping {

    mapping(string => string) public dicionario;

    mapping(string => uint256) public presencaNumero;

    mapping(address => bool) public presenca;
    
    mapping(address => mapping(address => uint256)) public NotaProfAluno;


    function setarPalavrasAoDicio(string memory _palavra, string memory _significado) external {
        dicionario[_palavra] = _significado;
    }

    function setarNumpresenca(uint256 _numeroChegada, string memory _nomedoAluno) external {
        presencaNumero[_nomedoAluno] = _numeroChegada;
    }

    function setarPresenca() external {
        presenca[msg.sender] = true;
    }

    function setarNotaAluno(address _aluno, uint256 _nota) external {
        NotaProfAluno[msg.sender][_aluno] = _nota;
    }
}