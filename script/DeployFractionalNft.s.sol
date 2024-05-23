pragma solidity ^0.8.19;

import {Script} from 'forge-std/Script.sol';
import {FractionalNft} from '../src/fractionalNft.sol';

contract DeployFractionalNft is Script{
    function run() external returns (FractionalNft){
        vm.startBroadcast();
        FractionalNft nft = new FractionalNft(0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266);
        vm.stopBroadcast();
        return nft;
    }
}