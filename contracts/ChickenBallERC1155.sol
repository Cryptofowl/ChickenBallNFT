// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Strings.sol";

contract ChickenBall is ERC1155, Ownable {
    constructor() ERC1155("") {}

    address[7] Addresses;
    

    function setURI(string memory newuri) public onlyOwner {
        _setURI(newuri);
    }

    function updateAddresses(address[] memory array) public onlyOwner {
        for (i=0; i=7; i++){
            Addresses[i].push(array[i]);
        }
    }

    function distribute() public {
        if ( currentExpiry >= block.timestamp() )
            for (i = 0; i = chickenBalls.length; i++){
                chickenBalls[i].rotten = true;
                }
            for (i=0; i > chickenBalls.length + 7; i++) {
                _mint(Addresses[i], i, "");
                    chickenBalls.push[
                        address: Addresses[i];
                        id: i + chickenBalls.length;
                        expiry: block.timestamp + 30 days;
                        rotten: false;
                    ]
            }

    }


    function uri(uint256 _tokenid) override public pure returns (string memory) {
        return string(
            abi.encodePacked(
                newuri,
                Strings.toString(_tokenid),".json"
            )
        );
    }
}