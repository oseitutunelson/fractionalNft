//SPDX-License-Identifier:MIT

pragma solidity ^0.8.23;

/**
 * @title  Nft  Contract
 * @author Owusu Nelson Osei Tutu
 * @notice A nft contract with additional features such as tokenURI
 */

import {ERC721URIStorage,ERC721} from "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract ComplexNft is ERC721URIStorage,Ownable{
   constructor(address initialOwner) ERC721('Angle Esates','ANE') Ownable(initialOwner){}

   function mint(address _to,uint256 tokenId,string calldata _uri) external onlyOwner{
     _mint(_to,tokenId);
     _setTokenURI(tokenId,_uri);
   }
}
