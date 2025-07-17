// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Calculator {

    uint256 public result = 0;

    function add(uint256 num) public {
        result += num;
    }

    function substract(uint256 num) public{
        result -= num;
    }

    function mult(uint256 num) public{
        result *= num;
    }

    function div(uint256 num) public{
        result /= num;
    }


    // In Solidity, a function can be declared as view if it does not modify the state of the contract. 
    // This helps the Ethereum Virtual Machine (EVM) optimize gas usage and informs developers that the function is read-only.
    function get() public view  returns (uint256){
        return result;
    }
}