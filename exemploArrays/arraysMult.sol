// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract ExemplosArrays {
    string[4] public Alunos;
    string[] public DisciplinaNome;
    string[][] private MatrizesDiscProf;

    function definirDisciplina(string memory nomeD) external {
        DisciplinaNome.push(nomeD);
    }

    function deletarElemento(uint256 numeroD) external {
        delete DisciplinaNome[numeroD];
    }

    function definirAluno(uint8 num, string memory novoAluno) external {
        Alunos[num] = novoAluno;
    }

    function definirProfeDisciplina(string memory disciplina, string memory professor) external {
        MatrizesDiscProf.push([disciplina, professor]);
    }

    function RetornarProfIndiceDisci(
        uint256 Indicedisciplina,
        uint256 IndiceProf
    )

        external 
        view 
        returns (string memory)
    {
        return MatrizesDiscProf[Indicedisciplina][IndiceProf];
    }
}
