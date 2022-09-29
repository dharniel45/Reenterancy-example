// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract ReEntrancyGuard {
    bool internal locked;
// Prevents reentrant calls to a function.
    modifier noReentrant() {
        require(!locked, "No re-entrancy");
        locked = true;
        _;
        locked = false;
    }
}
