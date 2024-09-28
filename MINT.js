// This script batch mints ERC721A tokens.

const { ethers } = require("hardhat");
require("dotenv").config();

async function main() {
  
  const privateKey = process.env.PRIVATE_KEY;
  const networkAddress =
    "https://ethereum-sepolia-rpc.publicnode.com";

  
  const provider = new ethers.providers.JsonRpcProvider(networkAddress);

 
  const signer = new ethers.Wallet(privateKey, provider);

 
  const contractAddress = "0x5ABC043dda28225F7557C0B10A273c138D2e12AF";

 
  const OneNFT = await ethers.getContractFactory("Dinar", signer);
  const contract = await OneNFT.attach(contractAddress);

  
  await contract.mint(5);

  console.log("successfully minted '5' tokens.");
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  }); 
