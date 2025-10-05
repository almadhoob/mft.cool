// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.27;

import {Test} from "forge-std/Test.sol";
import {Upgrades} from "openzeppelin-foundry-upgrades/Upgrades.sol";
import {MoneyForensicThinker} from "src/MoneyForensicThinker.sol";

contract MoneyForensicThinkerTest is Test {
  MoneyForensicThinker public instance;

  function setUp() public {
    address initialOwner = vm.addr(1);
    address recipient = vm.addr(2);
    address proxy = Upgrades.deployTransparentProxy(
      "MoneyForensicThinker.sol",
      initialOwner,
      abi.encodeCall(MoneyForensicThinker.initialize, (recipient))
    );
    instance = MoneyForensicThinker(proxy);
  }

  function testName() public view {
    assertEq(instance.name(), "Money Forensic Thinker");
  }
}
