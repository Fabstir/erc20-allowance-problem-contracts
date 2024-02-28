// SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.21;

import "./MyTokenUpgradeable.sol";

/// @title Factory pattern for creating NFT pool
/// @author Jules Lai
/// @notice Creates fractional tokens that link to an NFT for royalty distribution
/// @dev Arrays are used to store the individual NFTs and their fractional tokens
contract FactoryMyTokenUpgradeable {
    event MyTokenEventUpgradeable(address myTokenAddress);

    /**
     * @notice Deploys a new Tip NFT
     */
    function deploy(string memory name, string memory symbol) external {
        MyTokenUpgradeable myToken = new MyTokenUpgradeable();
        myToken.initialize(name, symbol);

        emit MyTokenEventUpgradeable(address(myToken));
    }
}
