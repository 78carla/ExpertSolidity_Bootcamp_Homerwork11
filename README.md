# HOMEWORK11

Assignment: code autiding. Write out the main points that you would include in an audit report.

Report:
. File DogCoinGme.sol:

CRITICAL:

- The Paywinners function has unprotected call sending tokens to an arbitrary address. Add a control for avoid this.

MAJOR:

- In the Payout function is used strict equality to determine if an account has enough Ether or tokens. Suggested to use greater than or equal to operator to check if the balance is greater than or equal to the required amount.

MINOR:

- line 40: It's generally recommended to use "transfer" instead of "send" to ensure that the transaction is reverted if the transfer fails. This can help prevent unexpected behavior in your contract.

INFORMATIONAL:

- Suggested to update the pragma solidity to a much recent version.
