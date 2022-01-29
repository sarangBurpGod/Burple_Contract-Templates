// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

import "@openzeppelin/contracts@4.4.2/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts@4.4.2/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts@4.4.2/access/Ownable.sol";

contract TEST is ERC721URIStorage, Ownable {
    constructor() ERC721("TEST", "TST") {}

    function safeMint(address to, uint256 tokenId, string memory uri) external
    {
        _safeMint(to, tokenId);
        _setTokenURI(tokenId, uri);
    }
}
