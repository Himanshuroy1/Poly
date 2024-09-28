Here’s the revised README file based on the provided Solidity code and details:

---

# Building with Polygon Bridge 

> **Sepolia to Amoy Bridge**  
> **Bridging Between Ethereum and Polygon Blockchains**  
> **Uses ERC721A for Reduced Gas Consumption**

## Description

This project involves deploying a 3-item NFT collection using Bing AI-generated images. The NFTs are stored on IPFS using pinata.cloud, and an ERC721A contract is deployed on the Goerli Ethereum Testnet. The contract includes functionalities for minting, transferring, and checking the balance of NFTs.

## Getting Started

### Prerequisites

Before starting, make sure you have the following:

* Node.js and npm installed.
* Hardhat Ethereum development environment set up.
* Metamask configured for the Polygon Amoy Testnet.
* Test tokens in your Polygon Amoy Testnet account.

### Installation

1. Clone this repository:
    ```bash
    git clone https://github.com/Kshitij251203/Polygon1.git
    ```

2. Navigate to the project folder:
    ```bash
    cd Polygon1
    ```

3. Install project dependencies:
    ```bash
    npm install
    ```

### Wallet Configuration

To configure your Metamask wallet for the Polygon Amoy Testnet, use the following settings:

- **Network Name**: POLYGON AMOY TESTNET
- **New RPC URL**: `https://rpc-amoy.polygon.technology/`
- **Chain ID**: 80002
- **Currency Symbol**: POL  
> (Note: Block Explorer URL is optional.)

### Contract Name and Symbol

The `DinarNFT` contract, which extends the `ERC721A` contract, represents a collection of NFTs. Here's how it is defined:

```solidity
contract DinarNFT is ERC721A
```

- **Name**: ROCKE 
- **Symbol**: NER

### Maximum Quantity of Tokens

The contract has a `maxMintLimit` variable, which sets the maximum number of NFTs that can be minted in this collection.

```solidity
uint256 public maxMintLimit = 3;
```

In this case, the maximum limit for minting is 3 NFTs.

### Base URL for NFTs (IPFS Base URL)

The NFTs' metadata is stored on IPFS. The `baseURI` points to the IPFS directory where the metadata is stored:

```solidity
string private baseURI = "https://bronze-wooden-aardvark-881.mypinata.cloud/ipfs/Qmf4MNSp6aJ3N1FPbLVms6vcsdjgUPJ9Wv71VT3qUs3RSn";
```

### NFT Prompt Description

The contract also includes a creative description for the NFT collection, which can be customized according to your interests:

```solidity
string public nftPrompt = "A futuristic underwater world portrait, a creative futuristic world, a majestic peacock";
```

This prompt represents the theme or inspiration behind the NFTs.

### Deployment of ERC721A Contract to Goerli Testnet

To deploy the contract:

1. Create a `.env` file and add your Ethereum wallet private key.
2. Configure the Hardhat network settings in `hardhat.config.js`.
3. Run the deployment script:
    ```bash
    npx hardhat run scripts/DEPLOY.js --network amoy
    ```

### Batch Mint NFTs

To mint multiple NFTs:

1. Edit the `MINT.js` script with the necessary details.
2. Run the script:
    ```bash
    npx hardhat run scripts/MINT.js --network amoy
    ```

### Transfer NFTs from Ethereum to Polygon

You can bridge the NFTs from Ethereum to Polygon using the FxPortal Bridge:

1. Edit the `TransferTokens.js` script with the required details.
2. Run the script:
    ```bash
    npx hardhat run scripts/TransferTokens.js --network amoy
    ```

### Check Balance of NFT Tokens

To check the balance of NFTs owned by a specific address:

1. Edit the `getBalance.js` script with the required details.
2. Run the script:
    ```bash
    npx hardhat run scripts/getBalance.js --network amoy
    ```

## Explorers Used

- [Amoy Testnet Explorer](https://www.oklink.com/amoy)
- [Sepolia PoS Chain Testnet Explorer](https://sepolia.etherscan.io)

## Author

Himanshu Roy  
SPDX-License-Identifier: MIT

