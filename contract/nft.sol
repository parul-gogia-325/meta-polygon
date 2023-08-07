// SPDX-License-Identifier: MIT


pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract NFT is ERC721Enumerable, Ownable {
    // Base URL for the NFTs
    string public baseUrl = "https://gateway.pinata.cloud/ipfs/QmPW9yGXiqrzNkH2iAooKfM84uDEMBqNhWwrJtffo3RBFD";

    // Array to store the prompt descriptions
    string[] public descriptions;

    constructor() ERC721("AINFT", "AFT") {}

    // Function to add a new prompt description, only the owner can do this
    function addPromptDescription(string calldata description) external onlyOwner {
        descriptions.push(description);
    }

    // Function to mint NFTs, which only the owner can perform
    function mint(address to, uint256 quantity) external onlyOwner {
        require(quantity > 0 && quantity <= 5, "You can mint between 1 and 5 NFTs at a time");

        uint256 tokenId = totalSupply() + 1;
        for (uint256 i = 0; i < quantity; i++) {
            _mint(to, tokenId + i);
        }
    }

    // Override the _baseURI function to return the base URL for the NFTs
    function _baseURI() internal view override returns (string memory) {
        return baseUrl;
    }

    // Function to get the total number of prompt descriptions
    function getPromptDescriptionCount() external view returns (uint256) {
        return descriptions.length;
    }

    // Function to get the prompt description at a specific index
    function getPromptDescription(uint256 index) external view returns (string memory) {
        require(index < descriptions.length, "Invalid index");
        return descriptions[index];
    }
}
