// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Bar {
    uint public var1 = 10;
    uint internal var2 = 11;
    uint private var4;

    constructor(uint _valor) {var2 = _valor;}

    function retornaVar2(uint _key) public view returns (uint) {
        if (_key == 0){
            uint retornoA = var2;
            return retornoA;}
        else {
            uint retornoB = var4;
            return retornoB;
        }
    }

    function calculate(uint _x,uint _y) public virtual pure returns (uint){
        return _x+_y;
    }

}

contract Foo is Bar {
    //herdando construtor do contrato pai
    constructor() Bar(10) {}

    function alteraVariavel(uint _key,uint _value)public {
        if (_key == 1) {var1 = _value;
        }else {var2 = _value;}
        //nao pode referenciar variaveis privadas
    }

    //sobrepondo o calculate do contrato pai
    function calculate(uint _x,uint _y) public override pure returns (uint){
        return _x*_y;
    }

    //chamando o calculate do contrato pai
    function callFooCalculate(uint _x,uint _y)public pure returns (uint) {
        return Foo.calculate(_x, _y);
    }
}