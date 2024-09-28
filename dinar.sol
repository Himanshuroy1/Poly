// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "erc721a/contracts/ERC721A.sol";

contract DinarNFT is ERC721A {
    address public contractOwner;

    uint256 public maxMintLimit = 3;

    string private baseURI =
        "https://bronze-wooden-aardvark-881.mypinata.cloud/ipfs/Qmf4MNSp6aJ3N1FPbLVms6vcsdjgUPJ9Wv71VT3qUs3RSn";

    string public nftPrompt = "A futuristic underwater world portrait, a creative futuristic world, a majestic peacock";

    constructor() ERC721A("ROCKE", "NFR") {
        contractOwner = msg.sender;
    }

    modifier onlyContractOwner() {
        require(msg.sender == contractOwner, "Only the contract owner can perform this action.");
        _;
    }

    function mintNFT(uint256 quantity) external payable onlyContractOwner {
        require(
            totalSupply() + quantity <= maxMintLimit,
            "Minting exceeds the maximum limit of 3 NFTs."
        );
        _mint(msg.sender, quantity);
    }

    function getOwnerBalance(address ownerAddress) external view returns (uint256) {
        return balanceOf(ownerAddress);
    }

    function _baseURI() internal view override returns (string memory) {
        return baseURI;
    }

    function getPromptDescription() external view returns (string memory) {
        return nftPrompt;
    }
}
