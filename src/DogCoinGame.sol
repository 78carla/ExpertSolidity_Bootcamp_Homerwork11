// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;
//import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "../lib/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";
import "../lib/openzeppelin-contracts/contracts/access/Ownable.sol";

contract DogCoinGame is ERC20, Ownable{
    uint256 public currentPrize;
    uint256 public numberPlayers;
    address payable[] public players;
    address payable[] public winners;

    event startPayout();

    constructor() ERC20("DogCoin", "DOG") {}

    function addPlayer(address payable _player) public payable {
        if (msg.value == 1) {
            players.push(_player);
        }
        numberPlayers++;
        if (numberPlayers > 200) {
            emit startPayout();
        }
    }

    function addWinner(address payable _winner) public {
        winners.push(_winner);
    }

    function payout() public {
        uint256 requiredBalance = 100;
        if (address(this).balance >= requiredBalance) {
            uint256 amountToPay = winners.length / 100;
            payWinners(amountToPay);
        }
    }

    function payWinners(uint256 _amount) public {
        require(msg.sender == owner(), "Only the contract owner can transfer funds");
        for (uint256 i = 0; i <= winners.length; i++) {
            //winners[i].send(_amount);
            winners[i].transfer(_amount);
        }
    }
}