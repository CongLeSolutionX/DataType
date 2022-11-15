// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.17;  

/*
* @title Solidity data types
* @author Michael Solomon
* @notice A simply smart contract to demonstrate simple data types available in Solidity
* 
*/

contract DataTypes {

    uint x = 9; //
    int i = -68; 
    uint8 j = 17;
    bool isEthereumCool = true; 
    address owner = msg.sender; // msg.sender is the Ethereum address of the account that sent this transaction
    bytes32 bMsg = "hello";
    string sMsg = "hello"; 

    function getStateVariables() public view returns (uint, int, uint, bool, address, bytes32, string memory) {
        return (x, i, j, isEthereumCool, owner, bMsg, sMsg); 
    }

}