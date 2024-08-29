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
