// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol"; // Import the IERC20 interface

contract ccv2 {
    IERC20 public token; // Declare a public variable of type IERC20

    constructor(address _tokenAddress) {
        token = IERC20(_tokenAddress); // Initialize the IERC20 interface instance
    }

    function deposit(uint256 amount) public {
        token.transferFrom(msg.sender, address(this), amount);
    }

    function withdraw(uint256 amount) public {
        token.transfer(msg.sender, amount);
    }

    function cBal() public view returns(uint){
         return token.balanceOf(address(this));
    }
}
