// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title Contract of the MAHA Hackathon
 * @author @cosmodude
 * @notice ERC20 token 
 */
contract TuneNft is ERC721, ERC721Burnable, Ownable {
    uint256 private _nextTokenId;

    constructor(address initialOwner)
        ERC721("TuneNft", "TUNE")
        Ownable(initialOwner)
    {}

    function safeMint(address to) public onlyOwner() {
        uint256 tokenId = _nextTokenId++;
        _safeMint(to, tokenId);
    }
}
