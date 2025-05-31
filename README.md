# 🎲 Coin Flip Game on Stacks Blockchain

## 📜 Project Description  
This project is a simple, decentralized coin flip guessing game implemented as a **Clarity smart contract** on the **Stacks Testnet**. Two players participate: Player 1 secretly picks a coin side (Heads or Tails), and Player 2 guesses it. The smart contract determines the winner transparently and trustlessly — all logic runs on-chain, eliminating any need for intermediaries or servers.

---

## 🔭 Project Vision  
The vision behind this project is to demonstrate the power and simplicity of building interactive games using Clarity smart contracts on the Stacks blockchain. By implementing a basic game with clear rules and verifiable outcomes, this project aims to:

- Showcase how on-chain logic can enable trustless gaming.
- Encourage developers to explore blockchain beyond tokens and DeFi.
- Lay the groundwork for more complex decentralized gaming experiences.

---

## ⭐ Key Features

- ✅ **Start Game:** Player 1 starts the game by selecting a coin side.
- 🧩 **Make Guess:** Player 2 guesses the coin side.
- 🏆 **Determine Winner:** The contract compares Player 2’s guess with Player 1’s choice and declares the winner.
- 🔐 **Access Control:** Prevents Player 1 from guessing and disallows guesses before game start or after finish.
- 🔁 **Single Round:** Each game allows only one guess and then ends.

---

## 🚀 Future Scope

- 💰 **Betting & Payouts:** Add STX wagering mechanics with automated payouts.
- 🔒 **Commit-Reveal Scheme:** Hide Player 1’s choice until guess is made to prevent cheating.
- 🎨 **Frontend UI:** Build an easy-to-use interface using React + Stacks.js.
- 🎮 **Multi-Round Gameplay:** Allow multiple rounds or best-of-three matches.
- 🏅 **NFT Rewards:** Mint NFTs as victory badges or participation tokens.
- 🌐 **Multiplayer Lobby:** Enable many concurrent games with matchmaking.

---

## 🧱 Built With

| Tool       | Purpose                                     |
|------------|---------------------------------------------|
| 🔤 Clarity | Language for writing smart contracts on Stacks |
| 🔧 Clarinet| Development and testing framework for Clarity contracts |

---

## 🛠 How to Deploy and Test

### Deploy on Stacks Testnet

```bash
clarinet deployments apply --testnet
