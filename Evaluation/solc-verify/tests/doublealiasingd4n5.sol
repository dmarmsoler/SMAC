// docker run --rm -v C:\Users\aa1558\contracts:/contracts solc-verify:latest '/contracts/doublealiasingd4n5.sol'
 /**Test configurations: 
 *  #Dimensions (D) : D = 4
 *   Size       (n) : n = 5  
 *  Value-to-memory : No
 *   Single Aliasing: No
 *   Double Aliasing: Yes
 *    Initialization: No
 */
 /* Test result:
 doublealiasingd4n5::doublealiasingd4n5f: ERROR
 - /contracts/doublealiasingd4n5.sol:23:2: Postcondition 'x[i][m][n][o] == value ' might not hold at end of function.
doublealiasingd4n5::[implicit_constructor]: OK
Use --show-warnings to see 1 warning.
Errors were found by the verifier.
 */
pragma solidity ^0.5.0;

contract doublealiasingd4n5 {
      
/// @notice precondition i < 5
/// @notice precondition j < 5
/// @notice precondition k < 5
/// @notice precondition l < 5
/// @notice precondition m < 5
/// @notice precondition n < 5
/// @notice precondition o < 5

/// @notice postcondition x[i][m][n][o] == value 

 function doublealiasingd4n5f (uint8[5][5][5][5] memory x, uint8 i, uint8 j, uint8 k, uint8 l, uint8 m, uint8 n, uint8 o, uint8 value, uint8[5][5][5][5] memory y, uint8[5][5][5][5] memory z) 
    public 
    returns (uint8[5][5][5][5] memory)  
    {
      x[i] = z[j];
      z[j][k] = y[l][m];
      y[l][m][n][o]= value;
      return x;
    }
}