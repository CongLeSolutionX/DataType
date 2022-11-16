// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.17;  

/*
* @title Solidity data types
* @author Cong Le
* @notice A simply smart contract to demonstrate simple data types available in Solidity
* 
*/

contract DataTypes {

    uint x = 9; // stores unsigned (non-negative) integers, starting from zero. A 256-bit integer.
    int i = -68; // stores intergers, including negative integers.
    uint8 j = 17; // stores unsigned small integers, starting from zero. A 8-bit integer.
    bool isEthereumCool = true; // defines yes/no or true/false
    
    // address defines the Ethereum account address
    address owner = msg.sender; // msg.sender is the Ethereum address of the account that sent this transaction
    
    /*
    - Use byte1 to bytes32 for arbitrary-length raw byte data.
    - Byte use less gas.
    */ 
    bytes32 bMsg = "hello";
    
    /*
    - Use string for any arbitrary-length string (UTF-8) data that is longer than 32 bytes.
    - Use string for dynamically allocated data.
    */
    string sMsg = "hello"; 

    // Getter function: get values and return them
    function getStateVariables() public view returns (uint, int, uint, bool, address, bytes32, string memory) {
        return (x, i, j, isEthereumCool, owner, bMsg, sMsg); 
    }
    // Setter function: are given input values, then they do something with them.
    function setMsg(bytes32 newValue)  private returns (bytes32) {
        bMsg = newValue;
    }

}