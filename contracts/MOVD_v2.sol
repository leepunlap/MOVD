// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MoveToken is ERC20, ERC20Burnable, Ownable {
    address MOVE_TEAM = 0xdd20a5D3c5EE23F94Fd573ca5837B562a2D3C32D;
    address MOVE_TOKENSALES = 0x4aBB983dddFA282F97bF8289a978B3d658E5D5F8;
    address MOVE_PARTNERSHIPS = 0x9e70eD075A46e418E7963335Cf9Fde5Fc5C8eA58;
    address MOVE_ECOSYSTEM = 0xF6C423BB72632f82027DB34615eC9c21de21b1C3;
    address MOVE_MINING = 0xa3F060Bc75881324F7f2919558797F61ea94AEDc;

    constructor() ERC20("Move Token", "MOVD") {
        _mint(MOVE_TEAM, 1500000000 * 10**decimals());
        _mint(MOVE_TOKENSALES, 1300000000 * 10**decimals());
        _mint(MOVE_PARTNERSHIPS, 1000000000 * 10**decimals());
        _mint(MOVE_ECOSYSTEM, 1200000000 * 10**decimals());
        _mint(MOVE_MINING, 5000000000 * 10**decimals());
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}
