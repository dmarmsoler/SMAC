// docker run --rm -v C:\Users\aa1558\contracts:/contracts solc-verify:latest '/contracts/assignd2n20.sol'
 /**Test configurations: 
 *  #Dimensions (D) : D = 2
 *   Size       (n) : n = 20
 *  Value-to-memory : Yes 
 *   Single Aliasing: No 
 *   Double Aliasing: No
 *    Initialization: No
 */
 /* Test result:
 assignd2n20::assignd2n20f: OK
assignd2n20::[implicit_constructor]: OK
Use --show-warnings to see 1 warning.
No errors found.
 */

pragma solidity ^0.5.0;

contract assignd2n20 {

/// @notice precondition i < 20
/// @notice precondition j < 20
/// @notice postcondition x[i][j] == value 
  function assignd2n20f(uint8[20][20] memory x, uint8 i, uint8 j, uint8 value) 
    public 
    returns (uint8[20][20] memory)  
    {
        x[i][j] = value;
      return x;
    }

}