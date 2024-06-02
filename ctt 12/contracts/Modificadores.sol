// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Modificadores {

    address public dono = msg.sender;
    uint restrita;

    modifier onlyOwner() {
        require(msg.sender == dono);
        _;
    }

    function setRestrita(uint _valor) public onlyOwner {
        restrita = _valor;
    }
}

contract ModParametros {
    //enums com possibilidade de venda e imovel
    enum Status { Venda , Aluguel }
    //variavel de estado que guarda o estado atual
    Status public status = Status.Venda;
    //declarar modificadores
    modifier ApenasStatus(Status _status) {
        require(status == _status);
        _;
    }
    //funcao que so sera ativada enquanto venda
    function apenasVenda() public ApenasStatus(Status.Venda) {
        //corpo da funcao
    }
    //funcao que so sera ativada enquanto aluguel
    function apenasAluguel() public ApenasStatus(Status.Aluguel) {
        //corpo da funcao
    }
    //funcao de altera o status do contrato
    function alteraStatus(Status _status) public {
        status = _status;
    }
}

contract OtherExample {
    uint public valor;

    //somando ++ para cada _; modifier
    modifier OnlyGrand(uint _value) {require(_value > 100); _; _; _;}

    function restrita(uint _valor) public OnlyGrand(_valor) {
        valor++;
    }
}