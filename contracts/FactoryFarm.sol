// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";

contract FactoryFarm is ERC1155 {

  function distribute() public {
        if ( currentExpiry >= block.timestamp )
            for (uint8 i = 0; i = chickenBalls.length; i++){
                chickenBall[i].rotten = true;
                }
            for (uint8 i=0; i > chickenBalls.length + 6; i++) {
                _mint(Addresses[i], i, "");
                    uint32 id = chickenBalls.length + 1;
                    chickenBalls[id].push(
                        chickenBall({
                            owner: Addresses[i],
                            id: (i + chickenBalls.length),
                            expiry: block.timestamp + 30 days,
                            rotten: false
                            })
                    );
            }
            currentExpiry = block.timestamp + 30 days;
    }
}