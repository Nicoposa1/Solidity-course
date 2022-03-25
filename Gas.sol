// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Gas {
    uint public numero;

    function asignarNuemero(uint entrada) public {
        numero = entrada;
    }
}
