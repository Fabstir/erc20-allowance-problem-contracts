// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

import "@openzeppelin/contracts-upgradeable/token/ERC721/ERC721Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

contract MyTokenUpgradeable is Initializable, ERC721Upgradeable {
    function initialize(string memory name, string memory symbol) public initializer {
        __ERC721_init(name, symbol);
    }
}