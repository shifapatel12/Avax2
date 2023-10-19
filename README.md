# Lottrey Smart Contract Readme

## Overview

This is the readme for the `Lottrey` smart contract written in Solidity. The contract simulates a simple lottery game where a player guesses a number, and if the guess matches the predefined lottery number, they win. Additionally, there is a provision for changing the lottery number, which can only be performed by the contract owner.

## Smart Contract Details

- **License**: MIT License
- **Solidity Version**: 0.8.1

## Smart Contract Functions

### `constructor(uint256 _num)`

- **Description**: The constructor initializes the lottery by setting the lottery number (`LottreyNum`) and the owner's address (`owner`) who has the authority to change the lottery number.
- **Parameters**:
  - `_num`: The initial lottery number.

### `guessNum(uint256 _num)`

- **Description**: Allows a player to make a guess by setting their chosen number.
- **Parameters**:
  - `_num`: The player's guessed number.

### `checkWin()`

- **Description**: Checks if the player's guessed number matches the current lottery number.
- **Returns**: `true` if the player's guess matches the lottery number; otherwise, it returns `false`.

### `changeNum(uint256 _num)`

- **Description**: Allows the contract owner to change the lottery number.
- **Parameters**:
  - `_num`: The new lottery number.
- **Modifier**:
  - `Onlyowner`: Only the owner of the contract can change the lottery number.

### `Onlyowner` Modifier

- **Description**: A custom modifier that ensures that only the owner of the contract can perform certain functions.
- **Usage**: Applied to the `changeNum` function to restrict access to the owner.

## Usage

1. Deploy the `Lottrey` contract, providing an initial lottery number as the constructor argument. The deployer will become the contract owner.

2. Players can participate in the lottery by calling the `guessNum` function and passing their chosen number as an argument.

3. To check if a player has won, use the `checkWin` function. It will return `true` if the player's guess matches the current lottery number.

4. The contract owner can change the lottery number using the `changeNum` function, providing the new number as an argument. This can only be done by the owner due to the `Onlyowner` modifier.

## License

This smart contract is distributed under the MIT License, which allows you to use, modify, and distribute it as per the terms of the MIT License.
