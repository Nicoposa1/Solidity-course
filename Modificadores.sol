// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Modificadores{

    address private owner;
    string private nombreOwner;

    constructor(string memory nombre) {
        owner = msg.sender;
        nombreOwner = nombre;
    }

    function Suma(uint numero1, uint numero2) public view IsOwner() returns(uint) {
        return numero1 + numero2;
    }

    modifier IsOwner(){
       require(msg.sender == owner, "El usuario no es el creador del contrato");
       _;
    }

}
