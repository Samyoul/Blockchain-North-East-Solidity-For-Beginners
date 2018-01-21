# Blockchain-North-East-Solidity-For-Beginners

## Things We’ll Cover

- Things you need to know
- Dependencies
- Link to code repository
- Benefits of Ethereum Smart Contracts
- Setup Development Environment
- Building The Smart Contract
- Building the Interface
- Summary

## Things You Need To Know

- Basic programming
  - Variables
  - Classes
  - Functions and methods
- HTML
- CSS
- JavaScript
- IDEs

## Dependencies and Tools

- Remix online Solidity IDE - https://remix.ethereum.org
- Ganache - http://truffleframework.com/ganache/
- Web3.js
- Twitter Bootstrap

## Link to Code Repository

https://github.com/Samyoul/Blockchain-North-East-Solidity-For-Beginners

## Applications of Ethereum Smart Contracts

**Applications**
- Finance
- Education
- Recruitment
- Medicine
- Gambling

## Setting Up the Development Environment

- Launch Remix
- Launch Ganache

## Building The Smart Contract

- Define the pragma
- Create the contract “BlockchainNorthEast”
- Set variables
  - organisers (mapping(address => bool))
  - attendees (mapping(address => bool))
  - attendeeCount (uint128)
- Getters
  - getAttendeeCount view
  - isAttendee view
  - isOrganiser view
- Setters
   -addAttendee - (as long as they are not in the list)
   -removedAttendee - (as long as they are in the list)
 -Modifiers
   -onlyByAttendee(address _address)
 -Demonstrate Remix test functionality

## Building the Interface

- Copy in some boilerplate HTML, includes TWBS for prettification
- Add web3.js (https://github.com/ethereum/web3.js/tree/1.0/dist)
- (https://raw.githubusercontent.com/ethereum/web3.js/1.0/dist/web3.min.js)
- Add provider / connect to a node
- Define ethereum account we will write with
- Define contract we will be working with
- Define contract location (Contract’s ethereum address)
- Interacting with the Ethereum contract methods.
- Getting data from the contract
- Setting data in the contract
- Displaying data from the contract

## Summary

- Uses and benefits of Ethereum Smart Contracts
- Basic Development Tools, Remix and Ganache
- Building a contract
  - Pragma
  - Variables
  - Getters
  - Setters
  - Modifiers
- Building a UI
  - Web3.js
  - Connecting to a node
  - Define Ethereum address, contract ABI, contract address
  - Interacting with the contract object with methods
