// SPDX-License-Identifier: GPL-3.0
 // docker run --rm -v C:\Users\aa1558\contracts:/contracts solc-verify:latest '/contracts/initializationd1n1.sol'
   /**Test configurations: 
 *  #Dimensions (D) : D = 1
 *   Size       (n) : n = 1  
 *  Value-to-memory : No
 *   Single Aliasing: No
 *   Double Aliasing: No
 *    Initialization: Yes
 */
 /** Test result:
 initializationd1n1::initializationd1n1f: OK
initializationd1n1::[implicit_constructor]: OK
Use --show-warnings to see 2 warnings.
No errors found.
  */
pragma solidity >=0.5.0;
 
contract initializationd1n1 {
    /// @notice precondition x[0] == false
    /// @notice postcondition x[0] == false
    function initializationd1n1f (bool[1] memory x) public {
        bool[1] memory y;
        y[0] = true;
    }
}