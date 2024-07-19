// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import "../src/Counter.sol";


contract CounterScript is Script {
    function setUp() public {}

    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);


        //  address komet_minter,
        // string memory _name,
        // string memory _ipfsUri,
        // uint256 _supply,
        // uint256 _mintLimit,
        // uint256 _mintPrice,
        // address _treasury
        
        Counter counter = new Counter();

        vm.stopBroadcast();
    }
}
