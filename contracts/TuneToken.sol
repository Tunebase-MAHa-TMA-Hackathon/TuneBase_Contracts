// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity 0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title Contract of the MAHA Hackathon
 * @author @cosmodude
 * @notice ERC20 token 
 */
contract TuneToken is ERC20, Ownable, ERC20Permit{
    constructor(address _owner) ERC20("TuneToken", "TUNE") Ownable(_owner) ERC20Permit("TuneToken"){}
    
    // set decimals to 2
    function decimals() public view virtual override returns (uint8) {
        return 18;
    }

    /**
     * @notice Mints tokens to the specified address
     * @param to The address of the recipient
     * @param amount Amount of tokens (with 18 decimals)
     */
    function mint(address to, uint256 amount) external onlyOwner()  {
        _mint(to, amount);
    }
}
