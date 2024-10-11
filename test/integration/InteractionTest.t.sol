// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {Test, console} from "forge-std/Test.sol";
import {FundMe} from "../../src/FundMe.sol";
import {DeployFundMe} from "../../script/DeployFundMe.s.sol";
import {FundFundMe, WithdrawFundMe} from "../../script/Interactions.s.sol";

contract InteractionsTest is Test {
    FundMe fundMe;

    address USER = makeAddr("user");
    uint256 SEND_VALUE = 0.1 ether;
    uint256 STARTING_BALANCE = 10 ether;
    uint256 GAS_PRICE = 1;

    function setUp() external {
        // fundMe = new FundMe(0x694AA1769357215DE4FAC081bf1f309aDC325306);
        DeployFundMe deploy = new DeployFundMe();
        fundMe = deploy.run();
        vm.deal(USER, STARTING_BALANCE);
    }

    // function testUserCanFundInteractions() public {
    //     FundFundMe fundFundMe = new FundFundMe();
    //     fundFundMe.fundFundMe(address(fundMe));

    //     vm.prank(USER);
    //     fundMe.fund{value: SEND_VALUE}();

    //     WithdrawFundMe withdrawFundMe = new WithdrawFundMe();
    //     withdrawFundMe.withdrawFundMe(address(fundMe));
    //     assert(address(fundMe).balance == 0);
    // }
}
