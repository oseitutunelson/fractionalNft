//SPDX-License-Identifier:MIT

pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol";
import {DevOpsTools} from 'lib/foundry-devops/src/DevOpsTools.sol';
import {ComplexNft} from '../src/ComplexNft.sol';

contract MintNft is Script{
   string constant PUG = '';
    function run() external{
        address mostRecentlyDeployed = DevOpsTools.get_most_recent_deployment("ComplexNft",block.chainid);
        mintNftOnContract(mostRecentlyDeployed);
    }

    function mintNftOnContract(address contractAddress) public{
        vm.startBroadcast();
        ComplexNft(contractAddress).mint('address','tokenId',PUG);
        vm.stopBroadcast();
    }
 }