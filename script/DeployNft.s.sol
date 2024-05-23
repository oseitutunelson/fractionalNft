//SPDX-License-Identifier:MIT

pragma solidity ^0.8.18;

import {Script} from 'forge-std/Script.sol';
import {ComplexNft} from '../src/ComplexNft.sol';

contract DeployNft is Script{
    function run() external returns (Cole){
        vm.startBroadcast();
        ComplexNft nft = new ComplexNft('address initialOwner');
        vm.stopBroadcast();
        return nft;
    }
}