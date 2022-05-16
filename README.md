The contracts are forked directly from the Nouns DAO repo with a few novel customisations by the Metaverse Engineers as follows;
Integration of multi-token payments for accepting bids in various ERC-20 tokens including $MONA token. We also added the ability to freeze certain payment methods in case we need to do so. In order to support ERC20 payment, we also added an oracle feed to the auction house contract.
Full deployment to Polygon Network. Custom deployment scripts for editing names and ticker symbols.
Reduced gas fees where NFTs are only minted on a successful auction with 1 or more bids above the reserve price. If there is little interest in a certain NFT, it will simply not mint. The current nouns code always mints, and is actually more costly if there is no successful bid as this requires a subsequent burn. Updated the Nouns DAO subgraph code and Frontend code to meet our standards for UI/UX as well as respond to the necessary contract changes.
Upgradeable versions of the contracts. In the future upgrade permissions can be forwarded on to a DAO or simply to the dead address to make the contracts fully immutable.

# nouns-monorepo

Nouns DAO is a generative avatar art collective run by a group of crypto misfits.

## Contributing

If you're interested in contributing to Nouns DAO repos we're excited to have you. Please discuss any changes in `#developers` in [discord.gg/nouns](https://discord.gg/nouns) prior to contributing to reduce duplication of effort and in case there is any prior art that may be useful to you.

## Packages

### nouns-api

The [nouns api](packages/nouns-api) is an HTTP webserver that hosts token metadata. This is currently unused because on-chain, data URIs are enabled.

### nouns-assets

The [nouns assets](packages/nouns-assets) package holds the Noun PNG and run-length encoded image data.

### nouns-bots

The [nouns bots](packages/nouns-bots) package contains a bot that monitors for changes in Noun auction state and notifies everyone via Twitter and Discord.

### nouns-contracts

The [nouns contracts](packages/nouns-contracts) is the suite of Solidity contracts powering Nouns DAO.

### nouns-sdk

The [nouns sdk](packages/nouns-sdk) exposes the Nouns contract addresses, ABIs, and instances as well as image encoding and SVG building utilities.

### nouns-subgraph

In order to make retrieving more complex data from the auction history, [nouns subgraph](packages/nouns-subgraph) contains subgraph manifests that are deployed onto [The Graph](https://thegraph.com).

### nouns-webapp

The [nouns webapp](packages/nouns-webapp) is the frontend for interacting with Noun auctions as hosted at [nouns.wtf](https://nouns.wtf).

## Quickstart

### Install dependencies

```sh
yarn
```

### Build all packages

```sh
yarn build
```

### Run Linter

```sh
yarn lint
```

### Run Prettier

```sh
yarn format
```
