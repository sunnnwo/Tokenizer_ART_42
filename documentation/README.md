# TokenizeArt Documentation

## What is this?
An ERC-721 NFT deployed on Ethereum Sepolia Testnet as part of the TokenizeArt project at 42 Lausanne.

## Contract Details
- **Contract Address**: `0x6a1507a3f1e897644d8FeBfE5Bbd9fED679CF89F`
- **Network**: Sepolia Testnet
- **Standard**: ERC-721

## How it works
1. The contract is deployed with a fixed metadata URI pointing to IPFS
2. The owner can mint NFTs by calling the `mint(address)` function
3. Each NFT has a unique token ID starting from 0

## Functions
| Function | Description |
|----------|-------------|
| `mint(address to)` | Mints a new NFT to the given address. Owner only. |
| `ownerOf(uint256 tokenId)` | Returns the owner of the given token ID |
| `tokenURI(uint256 tokenId)` | Returns the metadata URI of the given token ID |

## How to verify ownership
```bash
cast call 0x6a1507a3f1e897644d8FeBfE5Bbd9fED679CF89F \
  "ownerOf(uint256)" \
  0 \
  --rpc-url https://rpc.sepolia.org
```

## IPFS
- **Image**: ipfs://bafybeig3kruz6rm4si4nn5g4lpgiybvi6poxadtstjztm7vkvyeq4qp2oe
- **Metadata**: ipfs://bafkreibpuvb4ehyxxwtachnid5whw4nw3q3vhupewzj2mcflxo4oo4vd6i

## Requirements to use
- A Web3 wallet (e.g. MetaMask)
- Foundry installed for CLI interactions
