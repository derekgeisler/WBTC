# WBTC
Wrapped Bitcoin to Ethereum

Wrapping Bitcoin (BTC) onto another blockchain typically involves creating a tokenized version of Bitcoin that represents BTC on a different blockchain, allowing it to be used in that blockchain's ecosystem. This is commonly known as "wrapped Bitcoin" (e.g., WBTC on Ethereum).

Overview of the Process

Locking BTC: The original BTC is locked in a smart contract or custodial service.

Minting Wrapped BTC: An equivalent amount of wrapped BTC (WBTC) is minted on the new blockchain.

Burning Wrapped BTC: When users want to redeem their original BTC, the wrapped BTC is burned, and the locked BTC is released.

To wrap Bitcoin on Ethereum, we use the ERC-20 standard to create a token that represents Bitcoin. Here's a simplified example using Solidity for the Ethereum blockchain.

Prerequisites

Ethereum Development Environment: You can use Remix, Truffle, or Hardhat.

Ethereum Wallet: MetaMask or another Ethereum wallet.

Testnet Ether: Use a testnet like Ropsten to test your contract.

Explanation
ERC-20 Token: The contract inherits from ERC20, making it an ERC-20 token. This is the wrapped version of Bitcoin on Ethereum.

Custodian: The custodian is the entity responsible for holding the actual BTC and minting or burning WBTC tokens.

Locking and Minting: The lockBitcoin function allows the custodian to mint WBTC when BTC is deposited. The unlockBitcoin function burns WBTC when the user wants to redeem their BTC.

Custodian Management: The custodian's address can be changed by the contract owner.
Deployment

You can deploy this contract on an Ethereum testnet (like Ropsten) using Remix:

Compile: Paste the code into Remix, compile it, and check for any warnings or errors.

Deploy: Deploy the contract using your Ethereum wallet.

Interact: After deployment, use the provided functions to mint and burn WBTC tokens.

Integrating with a Custodian

To make this fully functional, you'll need a trusted custodian or a decentralized mechanism to manage the actual Bitcoin. The custodian could be a multisig wallet, a DAO, or a centralized service that users trust to hold the BTC.

Cross-Chain Bridge
To automate the process of wrapping and unwrapping BTC, you'd typically use a cross-chain bridge:

BTC Locking: When a user wants to wrap BTC, the bridge locks BTC on the Bitcoin blockchain.

Event Trigger: The locking event triggers the minting of WBTC on Ethereum.

BTC Releasing: When the user wants to unwrap, the bridge burns the WBTC and releases the locked BTC.

Real-World Example: WBTC

In the real world, Wrapped Bitcoin (WBTC) is managed by a consortium of custodians and merchants who manage the minting and burning process. The actual BTC is held by a custodian, and when users want to mint WBTC, the custodian locks an equivalent amount of BTC and mints WBTC on Ethereum.

