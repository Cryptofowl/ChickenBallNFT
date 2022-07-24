// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Strings.sol";

contract ChickenBall is ERC1155, Ownable {
    constructor() ERC1155("") {}

    address[7] Addresses;
    uint256 currentExpiry = 1;
    string currentUri;

    struct chickenBall {
        address owner;
        uint32 id;
        uint256 expiry;
        bool rotten;
    }

    mapping(uint32 => chickenBall[]) public chickenBalls;

    function arraySize() public returns (uint256) {
        return chickenBalls.length;
    }
    

    function setURI(string memory newuri) public onlyOwner {
        _setURI(newuri);
        currentUri = newuri;
    }

    function updateAddresses(address[] memory array) public onlyOwner {
        for (uint8 i=0; i==6; i++){
            Addresses[i] = array[i];
        }
    }


    function uri(uint256 _tokenid) override public pure returns (string memory) {
        return string(
            abi.encodePacked(
                currentUri,
                Strings.toString(_tokenid),".json"
            )
        );
    }
}