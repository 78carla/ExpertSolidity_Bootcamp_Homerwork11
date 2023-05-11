// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0; 

import "../lib/forge-std/src/Test.sol";
import "../src/DogCoinGame.sol";

contract isCheaperTest is Test {

    DogCoinGame public gc;
    address owner = address(0x1234);

        function setUp() public {
            
        vm.startPrank(owner);
        gc = new DogCoinGamer();
        //gas = new isCheaper();
        vm.stopPrank();
    }


    // function test_firstDiv() public {
        
    //     // Call the `firstDiv()` function with some input parameters
    //     uint result = gc.firstDiv(64, 2);
    //     // Check if the result is equal to the expected output
    //     assertEq(result, 32, "Division operation failed");
    //     }

    //  function test_AssemblyDiv() public {
        
    //     // Call the `firstDiv()` function with some input parameters
    //     uint result = gc.AssemblyDiv(64, 2);
    //     // Check if the result is equal to the expected output
    //     assertEq(result, 32, "Division operation failed");
    //     }

}


    
