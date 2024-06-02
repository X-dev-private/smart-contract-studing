// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

interface IValor {
    //criando funcoes de interface
    function leValor() external view returns (uint);

    function alteraValor(uint) external; 
}

contract Valor is IValor {
    uint valor;
    //utilizando funcoes da interface
    function leValor() external view override returns (uint) {
        return valor;
    }
    function alteraValor(uint _valor) public override {
        valor = _valor;
    }
}

contract Executor {
    function ExecutaValor(uint _valor,address endereco) public {
        //instanciando direto na interface
        IValor valor = IValor(endereco);
        //instanciando contrato
        //Valor valor = Valor(endereco);
        //funcao do contrato
        valor.alteraValor(_valor);
    }
}

contract Chamador {
    address endereco;
    function setAddress(address _address) public {
        endereco = _address;
    }
    function callAlteraValor(uint _valor) public returns (bool,bytes memory) {
        (bool sucesso,bytes memory retorno) = endereco.call(abi.encodeWithSignature("alteraValor(uint256)", _valor));
        return (sucesso,retorno);
    }
}