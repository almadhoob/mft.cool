// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.27;

import {Script} from "forge-std/Script.sol";
import {console} from "forge-std/console.sol";
import {Upgrades} from "openzeppelin-foundry-upgrades/Upgrades.sol";
import {MoneyForensicThinker} from "src/MoneyForensicThinker.sol";

contract MoneyForensicThinkerScript is Script {
  function setUp() public {}

  function run() public {
    // TODO: Set addresses for the variables below, then uncomment the following section:
    /*
    vm.startBroadcast();
    address initialOwner = <Set initialOwner address here>;
    address recipient = <Set recipient address here>;
    address proxy = Upgrades.deployTransparentProxy(
      "MoneyForensicThinker.sol",
      initialOwner,
      abi.encodeCall(MoneyForensicThinker.initialize, (recipient))
    );
    MoneyForensicThinker instance = MoneyForensicThinker(proxy);
    console.log("Proxy deployed to %s", address(instance));
    vm.stopBroadcast();
    */
  }
}
