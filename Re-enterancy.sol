// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

// The contract module that facilitates in preventing reentrant calls to a function.
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";

contract ReEntrancyGuard {
    bool internal locked;

    modifier noReentrant() {
        require(!locked, "No re-entrancy");
        locked = true;
        _;
        locked = false;
    }
}
