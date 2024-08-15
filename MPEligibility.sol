// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MPEligibility {
    uint8 public constant minimumAge = 25;

    function checkEligibility(uint8 age, bool isIndian) public pure returns (string memory) {

        require(isIndian, "You must be an Indian citizen");

        if (age < minimumAge) {
            revert("Not eligible to be a Member of Parliament");
        }

        assert(age >= minimumAge);

        return "Eligible to be a Member of Parliament";
    }
}
