// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "./ChickenBallERC1155.sol";

contract ChickenBallRewards {
    event somethingHappens(address);

    function collect() public {
        for (uint8 i=0; chickenBalls.length; i++)
            if (ChickenBallERC1155.balanceOf(msg.sender, i) >= 1 && chickenBall[i].expired == false)
                uint8 freshChicken += 0;


            if (freshChicken >= 7)
                emit somethingHappens(msg.sender);
    }
}







