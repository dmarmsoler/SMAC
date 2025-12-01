// docker run --rm -v C:\Users\aa1558\contracts:/contracts solc-verify:latest '/contracts/assignd1n20.sol'
 /**Test results:
 *  #Dimensions (D) : D = 1
 *   Size       (n) : n = 20
 *  Value-to-memory : Yes 
 *   Single Aliasing: No 
 *   Double Aliasing: No
 *    Initialization: No
 */
 /* Test result:
 assignd1n20::assignd1n20f: OK
assignd1n20::[implicit_constructor]: OK
Use --show-warnings to see 1 warning.
No errors found.
 */
pragma solidity ^0.5.0;

contract assignd1n20 {
  
/// @notice precondition i < 20
/// @notice precondition i < x.length
/// @notice postcondition x[i] == y

    function assignd1n20f(uint8[20] memory x, uint8 i, uint8 y) 
    public 
    returns (uint8[20] memory)  
    {
      x[i] = y;
      return x;
    }
}