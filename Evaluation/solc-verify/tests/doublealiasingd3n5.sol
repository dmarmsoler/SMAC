// docker run --rm -v C:\Users\aa1558\contracts:/contracts solc-verify:latest '/contracts/doublealiasingd3n5.sol'
 /**Test configurations: 
 *  #Dimensions (D) : D = 3
 *   Size       (n) : n = 5  
 *  Value-to-memory : No
 *   Single Aliasing: No
 *   Double Aliasing: Yes
 *    Initialization: No
 */
 /* Test result:
 doublealiasingd3n5::doublealiasingd3n5f: ERROR
 - /contracts/doublealiasingd3n5.sol:32:1: Postcondition 'x[i][m][n] == value ' might not hold at end of function.
doublealiasingd3n5::[implicit_constructor]: OK
Errors were found by the verifier.
 */
pragma solidity ^0.5.0;

contract doublealiasingd3n5 {
    
    
/// @notice precondition i < 5
/// @notice precondition i < x.length
/// @notice precondition m < 5
/// @notice precondition m < x[i].length
/// @notice precondition n < 5

/// @notice precondition i < y.length
/// @notice precondition j < 5
/// @notice precondition j < y[i].length
/// @notice precondition k < 5
/// @notice precondition l < 5
/// @notice precondition l < z.length
/// @notice precondition m < 5
/// @notice precondition m < z[l].length
/// @notice precondition n < 5

/// @notice postcondition x[i][m][n] == value 

function doublealiasingd3n5f(uint8[5][5][5] memory x, uint8 i, uint8 j, uint8 k, uint8 l, uint8 m, uint8 n, uint8 value, uint8[5][5][5] memory y, uint8[5][5][5] memory z) 
    pure
    public 
    returns (uint8[5][5][5] memory)  
    {
      x[i] = y[j];
      y[j][k] = z[l][m];
      z[l][m][n]= value;
      return x;
    }
}