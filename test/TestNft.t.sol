pragma solidity ^0.8.19;

import {Test} from 'forge-std/Test.sol';
import {FractionalNft} from '../src/fractionalNft.sol';
import {DeployScript} from '../script/DeployNft.s.sol';

contract TestNft is Test{
    FractionalNft nft;

    function setUp() public{
        DeployScript deployNft = new DeployScript();
        deployNft = deployNft.run();
    }

    //
}