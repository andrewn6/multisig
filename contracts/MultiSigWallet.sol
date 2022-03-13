// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract MultiSigWallet {
  // Transaction struct, excuted, address, value, data
  struct Transaction {
    bool executed;
    address destination;
    uint value;
    bytes data;
  }

  event Deposit(address indexed sender, uint value);

  
  function()
    	external
      payable
  {
        if (msg.value > 0) {
            emit Deposit(msg.sender, msg.value);
	      }
  }

  constructor(address[] memory _owners, uint _required) public {}
 
  // Submit transaction
  function submitTransaction(address destination, uint value, bytes memory data) public returns (uint transactionId) {}

  // confirm transaction
  function confirmTransaction(uint transactionId) public {}
  
  // revoke
  function revokeConfirmation(uint transactionId) public {}
  

  // execute transaction
  function executeTransaction(uint transactionId) public {}
  
  // check if its confirmed
  function isConfirmed(uint transactionId) internal view returns (bool) {}
  

  // add transaction
  function addTransaction(address destination, uint value, bytes memory data) internal returns (uint transactionId) {}
}
