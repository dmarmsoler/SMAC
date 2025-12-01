// docker run --rm -v C:\Users\aa1558\contracts:/contracts solc-verify:latest '/contracts/singlealiasingd2n5.sol'
 /**Test configurations: 
 *  #Dimensions (D) : D = 2
 *   Size       (n) : n = 5  
 *  Value-to-memory : No
 *   Single Aliasing: Yes
 *   Double Aliasing: No
 *    Initialization: No
 */
 /* Test result:
 singlealiasingd2n5::singlealiasingd2n5f: OK
singlealiasingd2n5::[implicit_constructor]: OK
No errors found.
 */
pragma solidity ^0.5.0;

contract singlealiasingd2n5 {

  
/// @notice precondition i < 5
/// @notice precondition i < x.length
/// @notice precondition j < 5
/// @notice precondition i < y.length
/// @notice precondition j < y[i].length
/// @notice precondition k < 5
/// @notice postcondition x[i][k] == value 
  function singlealiasingd2n5f(uint8[5][5] memory x, uint8 i, uint8 j, uint8 k, uint8 value, uint8[5][5] memory y) 
    pure 
    public 
    returns (uint8[5][5] memory)  
    {
      x[i] = y[j];
      y[j][k] = value;
      return x;
    }

}