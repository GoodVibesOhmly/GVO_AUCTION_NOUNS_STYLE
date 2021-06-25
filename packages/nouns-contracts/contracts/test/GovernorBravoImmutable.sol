// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

import "../governance/GovernorBravoDelegate.sol";

contract GovernorBravoImmutable is GovernorBravoDelegate {

     constructor(
            address timelock_,
            address comp_,
            address admin_,
            uint votingPeriod_,
            uint votingDelay_,
            uint proposalThreshold_) {
        admin = msg.sender;
        initialize(timelock_, comp_, votingPeriod_, votingDelay_, proposalThreshold_);

        admin = admin_;
    }


    function initialize(address timelock_, address comp_, uint votingPeriod_, uint votingDelay_, uint proposalThreshold_) override public {
        require(msg.sender == admin, "GovernorBravo::initialize: admin only");
        require(address(timelock) == address(0), "GovernorBravo::initialize: can only initialize once");
        
        timelock = TimelockInterface(timelock_);
        comp = CompInterface(comp_);
        votingPeriod = votingPeriod_;
        votingDelay = votingDelay_;
        proposalThreshold = proposalThreshold_;
    }

    function _initiate() public {
        proposalCount = 1;
        initialProposalId = 1;
    }
}