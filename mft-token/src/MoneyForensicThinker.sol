// SPDX-License-Identifier: Apache-2.0
// Compatible with OpenZeppelin Contracts ^5.4.0
pragma solidity ^0.8.27;

import {ERC20Upgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import {ERC20PermitUpgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20PermitUpgradeable.sol";
import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

/// @custom:security-contact hello@mft.cool
contract MoneyForensicThinker is Initializable, ERC20Upgradeable, ERC20PermitUpgradeable {
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address recipient) public initializer {
        __ERC20_init("Money Forensic Thinker", "MFT");
        __ERC20Permit_init("Money Forensic Thinker");

        _mint(recipient, 10000000000 * 10 ** decimals());
    }
}
