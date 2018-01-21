pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract SteamPay is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function SteamPay(address _owner)  UpgradeableToken(_owner) {
    name = "SteamPay";
    symbol = "STP";
    totalSupply = 500000000000000000;
    decimals = 9;

    balances[_owner] = totalSupply;
  }
}