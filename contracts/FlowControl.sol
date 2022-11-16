// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.17;

/*
* @title Solidity Flow Control
* @author Cong Le
* @notice A simply smart contract to demonstrate flow controls in Solidity
* 
*/

contract FlowControl { 
    function calcDozenDiscountIF(uint purchasedQty) private pure returns (bool) {
        bool giveDozenPrize = false;

        if (purchasedQty >= 12)
            giveDozenPrize = true;
        else 
            giveDozenPrize = false;
        return (giveDozenPrize);
    }

    // WHILE is an interation structure runs the body 0 or more time
    function calcDozenDiscountWHILE(uint purchasedQty) private pure returns (bool) {
        bool giveDozenPrice = false;
        uint numDonuts = 1;

        while (numDonuts < purchasedQty) { 
            numDonuts++;
            if (numDonuts >= 12) { 
                giveDozenPrice = true;
                break;
                /* Need curly braces for if statement when the execution block inside the if statement has more than 1 line of code.
                Otherwise, we dont need the curly brances if we only have 1 line of code in if statement. */
            }
        }
        return (giveDozenPrice);
    }

    // DO-WHILE is an interation structure runs the body 1 or more time
    function calcDozenDiscountDO(uint purchasedQty) private pure returns (bool) {
        bool giveDozenPrice = false;
        uint numDonuts = 1;

        do { 
            numDonuts++;
            if (numDonuts >= 12) {
                giveDozenPrice = true;
                break;
            }
        } while (numDonuts < purchasedQty);

        return (giveDozenPrice);
    }

    function calcDozenDiscountFOR(uint purchasedQty) private pure returns (bool) {
        bool giveDozenPrice = false;
        uint numDonuts = 1;

        for (numDonuts = 1; numDonuts <= purchasedQty; numDonuts++) {
            if (numDonuts >= 12) {
                giveDozenPrice = true;
                break;
            }
        }
        return (giveDozenPrice);
    }
}