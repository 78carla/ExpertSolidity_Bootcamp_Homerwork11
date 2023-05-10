// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract isCheaper{
    
    // function firstDiv(uint256 numerator, uint256 denominator) public pure returns (uint){
    //    uint result;
    //    return result = numerator / denominator;
    // }

    function secondDiv(uint256 numerator, uint256 denominator) public pure returns (uint) {

        assembly {
            let result:= div (numerator, denominator)
            mstore(0x80, result)
            return (0x80, 32)
        }
        
    }

}
