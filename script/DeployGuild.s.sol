// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

import {Script} from "forge-std/Script.sol";
import {Guild} from "../src/Guild.sol";
import {Organization} from "../src/Organization.sol";
import "./DeployOrgImpl.s.sol";

contract DeployGuild is Script {
    function run() external returns(address guild,address ImplOrg){
        DeployOrgImpl deployOrg = new DeployOrgImpl();
        address ImplOrg = deployOrg.deployOrgImpl();
        vm.startBroadcast();
        Guild dep_guild = new Guild(address(ImplOrg));
        vm.stopBroadcast();
        guild = address(dep_guild);
        return (guild,ImplOrg);
    }
}

// 0x547cDBc48582cAE27f459Fef7d0e2c0E85531078