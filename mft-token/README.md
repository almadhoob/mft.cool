# MFT Token

This is an ERC-20 standard token that is based on an OpenZeppelin smart contract using Solidity language with Foundry framework. It comes with a contract, a test for that contract, and a script that deploys that contract.

## Installing Foundry

See [Foundry installation guide](https://book.getfoundry.sh/getting-started/installation).

## Initializing the project

```
bash setup.sh
```

## Testing the contract

```
forge test --force
```

## Deploying the contract

You can simulate a deployment by running the script:

```
forge script script/MoneyForensicThinker.s.sol --force
```

See [Solidity scripting guide](https://book.getfoundry.sh/guides/scripting-with-solidity) for more information.
