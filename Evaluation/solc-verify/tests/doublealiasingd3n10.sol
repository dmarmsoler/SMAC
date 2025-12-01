
// docker run --rm -v C:\Users\aa1558\contracts:/contracts solc-verify:latest '/contracts/doublealiasingd3n10.sol'
 /**Test configurations: 
 *  #Dimensions (D) : D = 3
 *   Size       (n) : n = 10  
 *  Value-to-memory : No
 *   Single Aliasing: No
 *   Double Aliasing: Yes
 *    Initialization: No
 */
 /* Test result:
 doublealiasingd3n10::doublealiasingd3n10f: ERROR
 - /contracts/doublealiasingd3n10.sol:32:1: Postcondition 'x[i][m][n] == value ' might not hold at end of function.
doublealiasingd3n10::[implicit_constructor]: OK
Use --show-warnings to see 1 warning.
Errors were found by the verifier.
 */
pragma solidity ^0.5.0;

contract doublealiasingd3n10 {
 
/// @notice precondition i < 10
/// @notice precondition i < x.length
/// @notice precondition m < 10
/// @notice precondition m < x[i].length
/// @notice precondition n < 10

/// @notice precondition i < y.length
/// @notice precondition j < 10
/// @notice precondition j < y[i].length
/// @notice precondition k < 10
/// @notice precondition l < 10
/// @notice precondition l < z.length
/// @notice precondition m < 10
/// @notice precondition m < z[l].length
/// @notice precondition n < 10

/// @notice postcondition x[i][m][n] == value 

function doublealiasingd3n10f (uint8[10][10][10] memory x, uint8 i, uint8 j, uint8 k, uint8 l, uint8 m, uint8 n, uint8 value, uint8[10][10][10] memory y, uint8[10][10][10] memory z) 
    public 
    returns (uint8[10][10][10] memory)  
    {
      x[i] = y[j];
      y[j][k] = z[l][m];
      z[l][m][n]= value;
      return x;
    }
}