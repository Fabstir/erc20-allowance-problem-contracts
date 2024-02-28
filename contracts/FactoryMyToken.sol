// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./MyToken.sol";

contract FactoryMyToken {
    event MyTokenEvent(address myTokenAddress);

    function deploy(string memory name, string memory symbol) external {
        MyToken newToken = new MyToken(name, symbol);
        
        emit MyTokenEvent(address(newToken));
    }
}
