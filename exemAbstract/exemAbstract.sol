// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.9;

abstract contract Dados {
    string public name;
    uint256 public age;

    function setName(string memory _name) external virtual {
        name = _name;
    }

    function setAge(uint256 _age) public virtual {
        age = _age;
    }
    
    function getDados() public view virtual returns (string memory, uint256) {
        return (name, (age));
    }
}

contract Setinformation is Dados {
    Dados public dados;

    function setAgeinDados(uint256 _age) external {
        dados.setAge(_age);
    }

    function getDadosforAbs() external view returns (string memory, uint256) {
        return getDados();
    }
}   
