// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

import {Organization} from "../src/Organization.sol";
import {Script} from "forge-std/Script.sol";


contract DeployOrgImpl is Script {

    address public ImplOrganization;

    function run() external returns (address ORG_IMPL) {

        ORG_IMPL = deployOrgImpl();
    }

    function deployOrgImpl() public returns(address){
        vm.startBroadcast();
        Organization org = new Organization();
        vm.stopBroadcast();
        ImplOrganization = address(org);
        return ImplOrganization;
    }
}

// 0x94d42D94003D568C6D0BEb9c182433a34aa39Ab6