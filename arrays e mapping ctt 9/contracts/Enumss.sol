// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Enumss {  
    enum Status {
        aberto,fechado,progresso
    }
    Status public status;

    //exemplo 1

    constructor() {
        status = Status.fechado;
    }

    //exemplo 2

    /*constructor() {
        status = Status.aberto;
    } 
    function continua() public {
        if(status == Status.aberto) {
            // ... executadas apenas se status for aberto
        }
    }*/
}