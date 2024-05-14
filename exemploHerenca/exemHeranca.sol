// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0; 

contract X {
    string public name;

    constructor(string memory _name) {
        name = _name;
    }
}

contract Y {
    string public text;

    constructor(string memory _text) {
        text = _text;
    }
}   

contract B is X("MaxFlip"), Y("Dev"){

}

contract C is X, Y {
    constructor(string memory _name, string memory _text) X(_name) Y(_text) { }
}

contract D is X, Y {
    constructor() X("X foi chamado") Y("Y foi chamado") { }
}



contract A {
    function foo() public pure virtual returns (string memory) {
        return "A";
    }
}


contract F is A {
    function foo() public pure virtual override returns (string memory) {
        return "F";
    }
}

contract O is A {
    function foo() public pure virtual override returns (string memory) {
        return "O";
    }
}

contract J is F, O {
    function foo() public pure override(F, O) returns (string memory) {
        return super.foo();
    }
}

contract Z is O, F {
    function foo() public pure override(O, F) returns (string memory) {
        return super.foo();
    }
}

    contract L is A, F {
        function foo() public pure override(A, F) returns (string memory) {
            return super.foo();
    }
}