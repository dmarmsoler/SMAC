// docker run --rm -v C:\Users\aa1558\contracts:/contracts solc-verify:latest '/contracts/singlealiasingd2n20.sol'
 /**Test configurations: 
 *  #Dimensions (D) : D = 2
 *   Size       (n) : n = 20  
 *  Value-to-memory : No
 *   Single Aliasing: Yes
 *   Double Aliasing: No
 *    Initialization: No
 */
 /*
 singlealiasingd2n20::singlealiasingd2n20f: OK
singlealiasingd2n20::[implicit_constructor]: OK
No errors found.
 */
pragma solidity ^0.5.0;

contract singlealiasingd2n20 {

  
/// @notice precondition i < 20
/// @notice precondition i < x.length
/// @notice precondition j < 20
/// @notice precondition i < y.length
/// @notice precondition j < y[i].length
/// @notice precondition k < 20
/// @notice postcondition x[i][k] == value 
  function singlealiasingd2n20f(uint8[20][20] memory x, uint8 i, uint8 j, uint8 k, uint8 value, uint8[20][20] memory y) 
    pure
    public 
    returns (uint8[20][20] memory)  
    {
      x[i] = y[j];
      y[j][k] = value;
      return x;
    }

}