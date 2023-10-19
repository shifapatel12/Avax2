// SPDX-License-Identifier: MIT

pragma solidity ^0.8.1;

contract Lottrey {
    uint256 private LottreyNum;
    address public owner;
    uint256 public num;

    modifier Onlyowner() {
        require(msg.sender == owner);
        _;
    }

    constructor(uint256 _num) {
        LottreyNum = _num;
        owner = msg.sender;
    }

    function guessNum(uint256 _num) public {
        num = _num;
    }

    function checkWin() public view returns (bool) {
        return num == LottreyNum;
    }

    function changeNum(uint256 _num) public Onlyowner {
        LottreyNum = _num;
    }
}
