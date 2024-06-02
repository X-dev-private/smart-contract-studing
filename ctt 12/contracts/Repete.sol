// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract While {

    function repete() public pure returns (uint) {

            uint contagem;
            uint soma;

        while (contagem < 10) {
            contagem++;
            //if(contagem == 5){break;}
            if(contagem == 5){continue;}
            soma++;
        }

        return soma;
    }

}

contract For {
    uint[5] arrayInteiro = [uint(1),2,3,4,5];
    uint public soma;

    function repeteFor() public view  returns (uint) {
        for(uint contador;contador < arrayInteiro.length;contador++) {
            soma = soma + arrayInteiro[contador];
        }

        return soma;
    }
}