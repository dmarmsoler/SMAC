// docker run --rm -v C:\Users\aa1558\contracts:/contracts solc-verify:latest '/contracts/assigndynamicd1.sol'
 /**Test configurations: 
 *     Dimension (D): 1
 *          Dynamic : Yes  
 *  Value-to-memory : Yes 
 *   Single Aliasing: No
 *   Double Aliasing: No
 *    Initialization: No
 */
 /* Test result:
 assigndynamicd1::assigndynamicd1f: OK
assigndynamicd1::[implicit_constructor]: OK
No errors found.
 */
pragma solidity ^0.5.0;

contract assigndynamicd1 {

/// @notice precondition i < x.length
/// @notice postcondition x[i] == y

 function assigndynamicd1f(uint8[] memory x, uint8 i, uint8 y) 
    pure 
    public 
    returns (uint8[] memory)  
    {
      x[i] = y;
      return x;
    }
}