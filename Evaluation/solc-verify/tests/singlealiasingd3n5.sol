//  docker run --rm -v C:\Users\aa1558\contracts:/contracts solc-verify:latest '/contracts/singlealiasingd3n5.sol'
 /**Test configurations: 
 *  #Dimensions (D) : 3
 *   Size       (n) : 5
 *  Value-to-memory : No
 *   Single Aliasing: Yes
 *   Double Aliasing: No
 *    Initialization: No
 */
 /* Test result:
 singlealiasingd3n5::singlealiasingd3n5f: OK
singlealiasingd3n5::[implicit_constructor]: OK
Use --show-warnings to see 1 warning.
No errors found.
 */
pragma solidity ^0.5.0;

contract singlealiasingd3n5 {
    
/// @notice precondition i < 5
/// @notice precondition i < x.length
/// @notice precondition j < 5
/// @notice precondition j < x[i].length
/// @notice precondition k < 5
/// @notice precondition k < x[i][j].length
/// @notice precondition i < y.length
/// @notice precondition j < y[i].length
/// @notice precondition k < y[i][j].length
/// @notice postcondition x[i][k][l] == value 

 function singlealiasingd3n5f(uint8[5][5][5] memory x, uint8 i, uint8 j, uint8 k, uint8 l, uint8 value, uint8[5][5][5] memory y) 
    public 
    returns (uint8[5][5][5] memory)  
    {
      x[i] = y[j];
      y[j][k][l] = value;
      return x;
    }

}