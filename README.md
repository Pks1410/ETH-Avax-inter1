# MPEligibility Smart Contract
# Introduction
The MPEligibility smart contract is designed to verify whether an individual meets the basic eligibility criteria to become a Member of Parliament (MP) in India. The contract checks the age and citizenship status of the individual, ensuring compliance with the constitutional requirements.

# Key Features
* Minimum Age Requirement: Ensures that the individual is at least 25 years old.
* Citizenship Check: Verifies that the individual is an Indian citizen.
* Eligibility Verification: Provides a straightforward function to determine eligibility based on the above criteria.
# Contract Structure
1) minimumAge Constant: Represents the minimum age required to become a Member of Parliament in India.
2) checkEligibility Function:
* age: The age of the individual (must be of type uint8).
* isIndian: A boolean indicating whether the individual is an Indian citizen.
* Returns: A string message indicating whether the individual is eligible to be a Member of Parliament.
# Functionality:
* Citizenship Check: Uses require to ensure that the individual is an Indian citizen. If not, it throws an error message: "You must be an Indian citizen."
* Age Check: If the individual's age is less than 25, it uses revert to return an error message: "Not eligible to be a Member of Parliament."
* Assertion: Confirms that the age is indeed greater than or equal to 25 using assert.
* Eligibility Message: If both checks pass, it returns the message: "Eligible to be a Member of Parliament."
# Deploying the Contract
* Deploy the MPEligibility contract on an Ethereum-compatible blockchain.
* Once deployed, the contract can be used to verify eligibility by calling the checkEligibility function.

To check if an individual is eligible to become a Member of Parliament, call the checkEligibility function with the required parameters:

```shell
checkEligibility(uint8 age, bool isIndian)
```
Example: To check the eligibility of a 30-year-old Indian citizen, you would call:
```shell
checkEligibility(30, true)
```
Possible Outcomes:
* If the individual is not an Indian citizen, the function will revert with "You must be an Indian citizen."
* If the individual is younger than 25, the function will revert with "Not eligible to be a Member of Parliament."
* If the individual meets both criteria, the function will return "Eligible to be a Member of Parliament."

# use of functions
* require: Ensures the individual is an Indian citizen.
* revert: Stops execution and provides an error message if the individual’s age is below the required minimum.
* assert: Validates that the age is at least 25, ensuring the logic flow is correct.

## Authors

- Name: Prakhar Sahu
- MetacrafterID: Prakhar1410 (1410sahu.prakhar@gmail.com)
- Loom Video Link: https://www.loom.com/share/60fd459135ba4852a27cef5a7b93cd63?sid=831c6ceb-8943-40fb-98fa-2544d5b74ab0


