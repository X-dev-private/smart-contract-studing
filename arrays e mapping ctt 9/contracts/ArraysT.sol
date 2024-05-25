// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract ArrayT {
    //array dinamica
    uint[] internal  number = new uint[](10);
    //array estatico uint
    uint[4] internal  number2 = [3,5,8];
    //array estatico string
    string[2] internal  name = ["vazio","nada"];
    //array dinamico string
    string[] public textos;

    //add array dinamico 
    function novoElemento(string memory element) public {
        textos.push(element);
    }

    //remove array dinamico
    function removeElemento() public {
        textos.pop();
    }

    //view tamanho do array
    function tamanhoArray() public view returns (uint) {
        return textos.length;
    }

    //alterando array estatico fora do codigo
    function alteraArray(uint indice,uint valor) public {
        number2[indice] = valor;
    }
    //alterando array estatico dentro do codigo
    /*
    function alteraArray() public {
        // altera todos os arrays
        number2 = [5,7,8];

        //altera uma chave do array
        number2[3] = 7;
    }*/

    //retorna chave especifico do array estatico
    function lerArray(uint indice) public view returns (uint) {
        return number2[indice];
    }

    //retorna todos os indices do array estatico
    function retornaArray() public view returns (uint[4] memory) {
        return number2 ;
    }

    
}