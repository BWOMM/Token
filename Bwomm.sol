pragma solidity ^0.4.18;

import './StandardToken.sol';
import './BurnableToken.sol';
import './ownership/Ownable.sol';

contract BWOMM is StandardToken,BurnableToken {
    string public name = 'BWOMM';
    string public symbol = 'WOM';
    uint8 public decimals = 18;
    uint public INITIAL_SUPPLY = 7500000000000000000000000000;

//give the entire supply to the creator

function BWOMM () public {
  totalSupply_ = INITIAL_SUPPLY;
  balances[msg.sender] = INITIAL_SUPPLY;
}
}
