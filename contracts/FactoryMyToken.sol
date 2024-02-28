// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./MyToken.sol";

contract FactoryMyToken {
    event MyTokenEvent(address myTokenAddress);

    function deploy() external {
        MyToken newToken = new MyToken("MyToken", "MTK");
        
        emit MyTokenEvent(address(newToken));
    }
}
