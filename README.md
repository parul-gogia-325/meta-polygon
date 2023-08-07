# polygonchallenge

Will deploy an NFT collection on the Ethereum blockchain, to put a twist on the project, use an image generation tool - like DALLE 2 or Midjourney - to the images for your NFTs.

## Description

In this project we are minting nfts and installing hardhat and deposit the networks

### Installing

platform to be use : 
1. Dalle
2. pinata cloud
3. gitpod /vscode
4. remix ide
5. metamask


### Executing program
1. npm install
   
2.compile using :
 npx hardhat compile
 
3. Perform test using command : npx hardhat test

4.  Create an environment file .env
   In this file add PRIVATE_KEY="your wallet private key", GOERLI_URL and MUMBAI_URL
   
5. deploy the program using :
   npx hardhat run scripts/deploy.js --network goerli 

6. Batch Mint NFTs
Run the following command to batch-mint NFTs: npx hardhat run scripts/batchMint.js --network goerli
The script will mint the specified number of NFTs and assign them to your address.

8. Approve and Deposit NFTs to Polygon Mumbai
Run the following commands to approve and deposit the minted NFTs from Ethereum to the Polygon Mumbai network using the FxPortal Bridge:
npx hardhat run scripts/approveDeposit.js --network goerli


## Help
you can refer my loom video :
https://www.loom.com/share/8845a3e6d1e94a1892483b009a9be3ca


## Authors

 Parul Gogia
 
 contact info : https://www.linkedin.com/in/parul-gogia/



## License

This project is licensed under the Parul Gogia


