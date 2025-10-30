# Real Estate Tokenization Platform (RE-Token)

[YOUR PROJECT LOGO/BANNER HERE]

![Solidity](https://img.shields.io/badge/Solidity-^0.8.20-lightgrey?logo=solidity)
![Hardhat](https://img.shields.io/badge/Hardhat-Framework-yellow?logo=hardhat)
![Foundry](https://img.shields.io/badge/Foundry-Framework-orange?logo=foundry)
![Ethereum](https://img.shields.io/badge/Ethereum-d3d3d3?logo=ethereum)
![OpenZeppelin](https://img.shields.io/badge/OpenZeppelin-Contracts-blue)
![Ethers.js](https://img.shields.io/badge/Ethers.js-library-blueviolet)
![Chainlink](https://img.shields.io/badge/Chainlink-Data%20Feeds-blue?logo=chainlink)
![IPFS](https://img.shields.io/badge/IPFS-Storage-cyan?logo=ipfs)
![License](https://img.shields.io/badge/License-MIT-green)

---

## 📖 Overview

**RE-Token** is a proof-of-concept (PoC) project developed for the NearX course. It demonstrates a system for tokenizing real-world real estate assets on the Ethereum blockchain.

The primary goal is to explore how blockchain technology can solve traditional real estate investment problems, such as:
* **Illiquidity:** Making it easier to buy and sell property shares.
* **High Barrier to Entry:** Allowing fractional ownership for smaller investors.
* **Lack of Transparency:** Creating an immutable record of ownership and transactions.

This project implements the core smart contracts required to mint a property as a unique Non-Fungible Token (NFT) and then fractionalize the ownership of that NFT using Fungible Tokens (ERC-20).

## ✨ Key Features

* **Property Minting:** An administrative role can mint a new property as an **ERC-721** token. Each NFT represents the legal title and unique data of a single real estate asset.
* **Metadata Storage:** Property details (images, legal documents, address) are stored on **IPFS** to ensure decentralized and immutable data.
* **Fractionalization:** An owner of a property NFT can lock it into a `Vault` contract, which in turn mints a specified supply of **ERC-20** tokens (e.g., `PROP-001`). These tokens represent fractional shares of the underlying asset.
* **Income Distribution:** A mechanism to airdrop rental income (e.g., in USDC or another stablecoin) proportionally to the holders of the fractional ERC-20 tokens.
* **Security & Compliance:** Utilizes **OpenZeppelin Contracts** for secure and battle-tested implementations of ERC-721, ERC-20, and role-based access control (`AccessControl.sol`).
* **Valuation (PoC):** Integrates **Chainlink Data Feeds** as a conceptual model for fetching real-time property valuation data (e.g., local real estate index or currency conversion).

## 🛠️ Tech Stack

### Core Contracts
* **[Solidity](https://soliditylang.org/):** Primary language for smart contracts.
* **[OpenZeppelin](https://openzeppelin.com/contracts/):** For secure, standard contract implementations (ERC721, ERC20, AccessControl, ReentrancyGuard).

### Development Environment
This project is configured to work with both Hardhat and Foundry, as per the course requirements.

* **[Hardhat](https://hardhat.org/):** Used for robust testing, scripting, and deployment management.
    * **[Ethers.js](https://docs.ethers.org/):** For blockchain interaction within scripts and tests.
    * **[Waffle](https://getwaffle.io/):** Testing library for Solidity.
    * **[Chai](https://www.chaijs.com/):** Assertion library for tests.
* **[Foundry](https://book.getfoundry.sh/):** A fast, portable, and Solidity-native toolkit.
    * **[Forge](https://book.getfoundry.sh/forge/):** For compiling, testing, and deploying contracts.
    * **[Cast](https://book.getfoundry.sh/cast/):** For making smart contract calls from the command line.

### Decentralized Storage
* **[IPFS](https://ipfs.tech/):** Used for storing property metadata (images, documents) off-chain.
