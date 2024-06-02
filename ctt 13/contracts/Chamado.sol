// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Chamado {

    uint value = 20;

    function getValue() public view returns (uint) {
        return value;
    }
    function serValue(uint _value) public {
        value = _value;
    }

}

contract Chamador {
    constructor() payable {}
    address endereco;
    function setAddress(address _address) public {
        endereco = _address;
    }

    //exemplo de call (metodo utilizado para fazer transaçoes)

    /*function callSetValue(uint _valor) public returns (bool,bytes memory) {
        (bool sucesso,bytes memory retorno) = endereco.call(abi.encodeWithSignature("alteraValor(uint256)", _valor));
        return (sucesso,retorno);
    }
    function callGetValue() public returns (bool,bytes memory) {
        (bool sucesso,bytes memory retorno) = endereco.call(abi.encodeWithSignature("getValue()"));
        return (sucesso,retorno);
    }*/

    //exemplo de static call(metodo utilizado para alterar view)

    /*function callSetValue(uint _valor) public view returns (bool,bytes memory) {
        (bool sucesso,bytes memory retorno) = endereco.staticcall(abi.encodeWithSignature("alteraValor(uint256)", _valor));
        return (sucesso,retorno);
    }
    function callGetValue() public view returns (bool,bytes memory) {
        (bool sucesso,bytes memory retorno) = endereco.staticcall(abi.encodeWithSignature("getValue()"));
        return (sucesso,retorno);
    }*/

    //exemplo de delegatecall(metodo utilizado para alterar a storage)

    function callSetValue(uint _valor) public returns (bool,bytes memory) {
        (bool sucesso,bytes memory retorno) = endereco.delegatecall(abi.encodeWithSignature("alteraValor(uint256)", _valor));
        return (sucesso,retorno);
    }
    function callGetValue() public returns (bool,bytes memory) {
        (bool sucesso,bytes memory retorno) = endereco.delegatecall(abi.encodeWithSignature("getValue()"));
        return (sucesso,retorno);
    }
}