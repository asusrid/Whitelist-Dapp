//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Whitelist {

    uint8 public maxAllowedUsers;
    //uint8 public numAllowedUsers;
    uint8 public numAddressesWhitelisted;

    mapping(address => bool) public whitelistedAddresses;

    constructor(uint8 _maxAllowedUsers) {
        maxAllowedUsers = _maxAllowedUsers;
    }

    function addAdressToWhitelist() public {
        require(!whitelistedAddresses[msg.sender], "Sender is already registered!");
        require(numAddressesWhitelisted < maxAllowedUsers, "You cannot create more users!");

        // register user
        whitelistedAddresses[msg.sender] = true;
        numAddressesWhitelisted += 1;
    }

}