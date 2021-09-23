// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MoveToken is ERC20, ERC20Burnable, Ownable {
    // Production Addresses
    address MOVE_TEAM = 0xdd20a5D3c5EE23F94Fd573ca5837B562a2D3C32D;
    address MOVE_TOKENSALES = 0x4aBB983dddFA282F97bF8289a978B3d658E5D5F8;
    address MOVE_PARTNERSHIPS = 0x9e70eD075A46e418E7963335Cf9Fde5Fc5C8eA58;
    address MOVE_ECOSYSTEM = 0xF6C423BB72632f82027DB34615eC9c21de21b1C3;
    address MOVE_MINING = 0xa3F060Bc75881324F7f2919558797F61ea94AEDc;

    // Production Addresses
    address TEST_MOVE_TEAM = 0xf8d496d379E56c3Ff98445302efd4Fc4a370dAc7;
    address TEST_MOVE_TOKENSALES = 0xc2Cf73901D31FF26FBf3a2614C54b408989F9da2;
    address TEST_MOVE_PARTNERSHIPS = 0x316312BdDbEa9E58C0CBA4Bf8926097C1fbab3AB;
    address TEST_MOVE_ECOSYSTEM = 0x17C2B6339662E54F1d5eb8255437732D55E85D34;
    address TEST_MOVE_MINING = 0x2603aE1Df3588c82cE646594E1a971Ba1657947c;

    // Assign to hardware wallets
    constructor() ERC20("Move Token", "MOVD") {
        _mint(TEST_MOVE_TEAM, 150000000 * 10**decimals());
        _mint(TEST_MOVE_TOKENSALES, 130000000 * 10**decimals());
        _mint(TEST_MOVE_PARTNERSHIPS, 100000000 * 10**decimals());
        _mint(TEST_MOVE_ECOSYSTEM, 120000000 * 10**decimals());
        _mint(TEST_MOVE_MINING, 500000000 * 10**decimals());
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}
