// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract AutoDestruicao {
    string public var1 = "hello i am out";
    constructor() payable {}
    function kill(address _endereco) public {
        selfdestruct(payable(_endereco));
    }
}