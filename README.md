# Chain Atlas (Built for Base)


Chain Atlas is a browser-first technical reference that demonstrates how to integrate Coinbase Wallet SDK with Base networks to perform structured, read-only inspection of onchain state. The project is designed for clarity, auditability, and alignment with Base account abstraction tooling.

---

## Base ecosystem alignment

Built for Base.

Supported networks:
- Base Mainnet  
  chainId (decimal): 8453  
  Explorer: https://basescan.org  

- Base Sepolia  
  chainId (decimal): 84532  
  Explorer: https://sepolia.basescan.org  

The application explicitly targets Base networks and relies on official Base RPC endpoints.

---

## What the script does

The app.chain-atlas.ts script provides an in-browser interface that:

1) Connects a wallet using Coinbase Wallet SDK  
2) Reads and validates the active chainId  
3) Performs read-only Base RPC queries:
   - latest block number  
   - ETH balance of the connected address  
4) Fetches detailed block metadata (timestamp, gas usage)  
5) Allows ETH balance checks for arbitrary addresses  
6) Outputs Basescan links for verification  

No transactions are sent. All interactions are strictly read-only.

---

## Repository structure

- app.chain-atlas.ts  
  Browser-based script that connects to a wallet, toggles Base networks, and inspects onchain state.

- contracts/  
  Solidity contracts deployed to Base Sepolia for testnet validation:
  - storage.sol — defines state variables stored on-chain
  - arrays.sol — adds, removes, or updates elements in arrays

- package.json  
  Dependency manifest including Coinbase SDKs and multiple repositories from the Base and Coinbase GitHub organizations.

- README.md  
  Technical documentation, Base references, licensing, and testnet deployment records.

---

## Libraries used

- @coinbase/wallet-sdk  
  Wallet connection layer compatible with Coinbase tooling and Base accounts.

- viem  
  RPC client used for Base reads and block inspection.

- Coinbase GitHub repositories  
  Included as dependencies to reference the broader Coinbase open-source ecosystem.

- Base GitHub repositories  
  Included as dependencies to document linkage with Base tooling and infrastructure.

---

## Installation and execution

Install dependencies using Node.js.  
Serve the project with a modern frontend dev server and open the page in a browser.

Expected result:
- Connected address printed with Basescan link  
- Active chainId displayed (8453 or 84532)  
- Read-only Base RPC data displayed  
- Block details available on demand  

---

## License

MIT License

Copyright (c) 2025 YOUR_NAME

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

---

## Author

GitHub: https://github.com/surreal-03
Email: surreal-03.popes@icloud.com
Public contact: https://x.com/messelaevahype

---

## Testnet Deployment (Base Sepolia)

As part of pre-production validation, one or more contracts may be deployed to the Base Sepolia test network to confirm correct behavior and tooling compatibility.

Network: Base Sepolia  
chainId (decimal): 84532  
Explorer: https://sepolia.basescan.org  

Contract storage.sol address:  
0xC15433655E12470c61D6d2C2a640B14ee4B27303 

Deployment and verification:
- https://sepolia.basescan.org/address/0xC15433655E12470c61D6d2C2a640B14ee4B27303 
- https://sepolia.basescan.org/0xC15433655E12470c61D6d2C2a640B14ee4B27303/0#code  

Contract arrays.sol address:  
0xF5bec30D53ca02A3E2c4C8e54B32eE5A3c4F1D17

Deployment and verification:
- https://sepolia.basescan.org/address/0xF5bec30D53ca02A3E2c4C8e54B32eE5A3c4F1D17
- https://sepolia.basescan.org/0xF5bec30D53ca02A3E2c4C8e54B32eE5A3c4F1D17/0#code  

These testnet deployments provide a controlled environment for validating Base tooling, account abstraction flows, and read-only onchain interactions prior to Base Mainnet usage.

