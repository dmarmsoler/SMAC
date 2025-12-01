// docker run --rm -v C:\Users\aa1558\contracts:/contracts solc-verify:latest '/contracts/singlealiasingd4n5.sol'
 /**Test configurations: 
 *  #Dimensions (D) : D = 4
 *   Size       (n) : n = 5
 *  Value-to-memory : No
 *   Single Aliasing: Yes
 *   Double Aliasing: No
 *    Initialization: No
 */
 /* Test result:
 singlealiasingd4n5::singlealiasingd4n5f: OK
singlealiasingd4n5::[implicit_constructor]: OK
No errors found.
 */
pragma solidity ^0.5.0;

contract singlealiasingd4n5 {
    
    
/// @notice precondition i < 5
/// @notice precondition i < x.length
/// @notice precondition j < 5
/// @notice precondition j < x[i].length
/// @notice precondition k < 5
/// @notice precondition k < x[i][j].length
/// @notice precondition l < 5
/// @notice precondition l < x[i][j][k].length
/// @notice precondition m < 5
/// @notice precondition i < y.length
/// @notice precondition j < y[i].length
/// @notice precondition k < y[i][j].length
/// @notice precondition l < y[i][j][k].length

/// @notice postcondition x[i][k][l][m] == value 
function singlealiasingd4n5f(uint8[5][5][5][5] memory x, uint8 i, uint8 j, uint8 k, uint8 l, uint8 m, uint8 value, uint8[5][5][5][5] memory y) 
    pure 
    public 
    returns (uint8[5][5][5][5] memory)  
    {
      x[i] = y[j];
      y[j][k][l][m] = value;
      return x;
    }

}