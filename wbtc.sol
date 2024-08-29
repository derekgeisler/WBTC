// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract WrappedBitcoin is ERC20, Ownable {
    address public custodian;

    event BitcoinLocked(address indexed user, uint256 amount);
    event BitcoinUnlocked(address indexed user, uint256 amount);

    constructor() ERC20("Wrapped Bitcoin", "WBTC") {
        custodian = msg.sender;  // The custodian is initially the contract deployer
    }

    // Lock BTC and mint equivalent WBTC
    function lockBitcoin(address user, uint256 amount) external onlyOwner {
        _mint(user, amount);
        emit BitcoinLocked(user, amount);
    }

    // Burn WBTC and unlock equivalent BTC
    function unlockBitcoin(address user, uint256 amount) external onlyOwner {
        _burn(user, amount);
        emit BitcoinUnlocked(user, amount);
    }

    // Change custodian
    function changeCustodian(address newCustodian) external onlyOwner {
        custodian = newCustodian;
    }
}
