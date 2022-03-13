// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract SimpleStorage {
  uint public storedData; 
  address public caller;
  
  function set(uint x) public {
    caller = msg.sender;
    storedData = x;
  }

  function get() public constants returns(uint) {
    return storedData;
  }

}
