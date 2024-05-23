// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

/**
 * @title A basic nft contract
 * @author Owusu Nelson Osei Tutu
 * @notice A basic nft contract for creating nfts
 */

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyNFT is ERC721, Ownable {
    constructor(address owner) ERC721("MyNFT", "MTK") Ownable(owner){}

    function safeMint(address to, uint256 tokenId) public onlyOwner {
        _safeMint(to, tokenId);
    }
}