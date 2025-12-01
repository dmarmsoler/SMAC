// SPDX-License-Identifier: GPL-3.0
// docker run --rm -v C:\Users\aa1558\contracts:/contracts solc-verify:latest '/contracts/initializationd2n1.sol'
/*Test configurations: 
   #Dimensions (D) : D = 2
    Size       (n) : n = 1  
 *  Value-to-memory : No
    Single Aliasing: No
    Double Aliasing: No
     Initialization: Yes
 */
 /*Test result:
initializationd2n1::initializationd2n1f: ERROR
 - /contracts/initializationd2n1.sol:15:5: Postcondition 'x[0][0] == false' might not hold at end of function.
initializationd2n1::[implicit_constructor]: OK
Use --show-warnings to see 2 warnings.
Errors were found by the verifier.
  */
pragma solidity >=0.5.0;
 
contract initializationd2n1 {
    /// @notice precondition x[0][0] == false
    /// @notice postcondition x[0][0] == false
    function initializationd2n1f (bool[1][1] memory x) public {
        bool[1][1] memory y;
        y[0][0] = true;
    }
}