# ChainShare 🔗📂

**Decentralized. Secure. Peer-to-Peer.**

ChainShare is a next-generation file sharing platform that eliminates the need for central servers. It combines **WebRTC** for direct Peer-to-Peer data transfer with the **Ethereum Blockchain** for immutable proof of ownership and integrity.

![Project Status](https://img.shields.io/badge/Status-Live-success) ![Network](https://img.shields.io/badge/Network-Sepolia-blue)

## 🚀 Key Features

*   **Serverless Storage**: Files move directly from the Sender's browser to the Receiver's browser. No cloud storage (Google Drive/AWS) is involved.
*   **Blockchain Registry**: Every upload is recorded on the **Sepolia Testnet** via a Smart Contract.
*   **Military-Grade Security**: Files are verified using **SHA-256 Hashing**. If the hash doesn't match the blockchain record, the download is flagged as corrupt.
*   **Privacy**: Your files are never stored on a database.

---

## 🛠️ Prerequisites

To use ChainShare, you need a Web3 Wallet.

1.  **Install MetaMask**: Download the [MetaMask Extension](https://metamask.io/) for Chrome/Firefox.
2.  **Switch to Sepolia**:
    *   Open MetaMask -> Settings -> Advanced -> Toggle "Show test networks" **ON**.
    *   Select **Sepolia** from the network dropdown.
3.  **Get Free ETH**: You need "Gas" to sign transactions. Get free Sepolia ETH from:
    *   [Google Cloud Faucet](https://cloud.google.com/application/web3/faucet/ethereum/sepolia)
    *   [Alchemy Faucet](https://www.alchemy.com/faucets/ethereum-sepolia)

---

## 📖 How to Use

### 1. Connect Wallet
Click the **"Connect Wallet"** button at the top right. MetaMask will pop up asking for permission. Once connected, your address (e.g., `0x12..34`) will appear.

### 2. Upload a File
1.  Click **"Select File"** and choose any image or document.
2.  Enter a description (optional).
3.  Click **"Upload & Generate Link"**.
4.  **Confirm the Transaction**: MetaMask will pop up asking you to "Sign" the upload. This creates a permanent record on the blockchain proving YOU uploaded this file relative to its unique Hash.

### 3. Share
Once the transaction is confirmed (Green Checkmark), click **"⚡ Share Link"**. This copies a unique URL to your clipboard.

### 4. Download (The Receiver)
1.  Open the link in a different browser (or send it to a friend).
2.  **Keep the Sender's Tab Open!** (Since it's P2P, the sender must be online for the receiver to download).
3.  The receiver will see "Initializing P2P connection...".
4.  Once the data arrives, the System **automatically verifies** the SHA-256 Hash against the Blockchain Record.
    *   ✅ **Green Check**: File is authentic and safe.
    *   ❌ **Red Alert**: File has been tampered with.

---

## ⛓️ Smart Contract Info

The file registry is deployed on the **Sepolia Testnet**:

*   **Contract Address**: `0x9D2A41CA886088F5077C1CFf1bB780097797BC9E`
*   **Framework**: Solidity ^0.8.0

## 💻 Running Locally

If you want to run this project on your own machine:

1.  Clone the repo:
    ```bash
    git clone https://github.com/YOUR_USERNAME/chainshare.git
    cd chainshare
    ```
2.  Start a local server (P2P requires HTTP, not file://):
    ```bash
    python -m http.server 8080
    # OR
    npx http-server
    ```
3.  Open `http://localhost:8080` in your browser.

---

**Built with ❤️ using HTML5, Vanilla JS, Ethers.js, and PeerJS.**
