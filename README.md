AdobeHouse (ADOBE) Token Smart Contract

AdobeHouse is designed to revolutionize education by empowering young minds through engaging activities and rewards. This repository contains the Solidity code for the AdobeHouse token.
Table of Contents

    Token Specifications
    Token Contract Functions
        Basic Token Operations
        Staking Integration
        Contract Management
    How to Interact with the Contract
    Important Note
    Contact Information

Token Specifications

    Name: AdobeHouse
    Symbol: ADOBE
    Decimals: 18
    Max Supply: 1,000,000,000 ADOBE
    Presale Supply: 100,000,000 ADOBE

Token Contract Functions
Basic Token Operations

    balanceOf(account): Returns the balance of a specified account.
    transfer(recipient, amount): Transfers tokens from the caller's account to the recipient's account.
    allowance(ownerAddr, spender): Returns the remaining allowance for a spender to spend on behalf of an owner.
    approve(spender, amount): Approves a spender to spend a specified amount of tokens on behalf of the caller.
    transferFrom(sender, recipient, amount): Transfers tokens from the sender to the recipient using the allowance mechanism.

Staking Integration

    setStakingContract(_stakingContract): Sets the address of the staking contract.
    stakeTokens(amount): Stakes a specified amount of tokens.
    unstakeTokens(): Unstakes tokens from the staking contract.
    generateReward(amount): Generates reward tokens for the caller.

Contract Management

    getContractOwner(): Returns the address of the contract owner.
    sellTokens(recipient, amount): Allows the contract owner to sell tokens during the ICO period.
    initiateUpgrade(_newContractAddress): Initiates the contract upgrade by setting the new contract address.
    finalizeUpgrade(): Finalizes the contract upgrade by transferring balances and ownership to the new contract.

How to Interact with the Contract

To interact with the AdobeHouse smart contract, use digital wallets like MetaMask or directly interact with the contract address. For staking and unstaking tokens, refer to the specific functions detailed above.
Important Note

Always verify the contract address and functions before interacting with it, as it may be subject to audits and ongoing updates.
Contact Information

For inquiries or partnerships, please contact us at office@adobehouse.org.

Thank you for your interest in AdobeHouse!
