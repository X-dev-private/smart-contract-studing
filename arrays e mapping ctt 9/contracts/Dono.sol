// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Dono {
    address public endereco;
    address public dono;

    constructor() {
        endereco = msg.sender;
    }

    function alteraEndereco() public {
        endereco = msg.sender;
    }
    //faz com que o codigo seja apenas executado por 1 chave
    /*function privada() public {
        require(msg.sender == 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);
    }*/
}