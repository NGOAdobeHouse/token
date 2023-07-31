# token
# AdobeHouse Token Smart Contract

This repository contains the Solidity smart contract for the AdobeHouse (ADOBE) token.

## Introduction

The AdobeHouse token is designed to revolutionize education by empowering young minds through interactive games and engaging activities. The token will be used as a reward system for completing tasks, providing access to educational resources, and facilitating staking for rewards.

## Token Details

- Name: AdobeHouse
- Symbol: ADOBE
- Decimals: 18
- Max Supply: 1,000,000,000 ADOBE
- Presale Supply: 100,000,000 ADOBE

## Smart Contract Functions

The smart contract includes the following functions:

- `totalSupply`: Returns the total supply of the token.
- `balanceOf`: Returns the balance of a specified account.
- `transfer`: Transfers tokens from the caller's account to the recipient's account.
- `allowance`: Returns the remaining allowance for a spender to spend on behalf of an owner.
- `approve`: Approves a spender to spend a specified amount of tokens on behalf of the caller.
- `transferFrom`: Transfers tokens from the sender to the recipient using the allowance mechanism.
- `setStakingContract`: Sets the address of the staking contract.
- `stakeTokens`: Stakes a specified amount of tokens.
- `unstakeTokens`: Unstakes tokens from the staking contract.
- `generateReward`: Generates reward tokens for the caller.
- `getContractOwner`: Returns the address of the contract owner.
- `sellTokens`: Allows the contract owner to sell tokens during the ICO period.
- `initiateUpgrade`: Initiates the contract upgrade by setting the new contract address.
- `finalizeUpgrade`: Finalizes the contract upgrade by transferring balances and ownership to the new contract.

## How to Use the Smart Contract

To interact with the AdobeHouse smart contract, you can use Ethereum wallets like MetaMask or directly interact with the contract address.

For example, to stake tokens, call the `stakeTokens` function with the desired amount of tokens to stake. Similarly, to generate reward tokens, call the `generateReward` function with the amount of rewards to generate.

## Important Note

Please be aware that the smart contract is subject to audits and ongoing updates. Always verify the contract address and functions before interacting with it.

## Contact Information

For any inquiries or partnerships, please contact us at office@adobehouse.org .

Thank you for your interest in AdobeHouse!
