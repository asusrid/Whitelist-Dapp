//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Whitelist {

    uint8 public maxAllowedUsers;

    constructor(uint8 _maxAllowedUsers) {
        maxAllowedUsers = _maxAllowedUsers;
    }

}