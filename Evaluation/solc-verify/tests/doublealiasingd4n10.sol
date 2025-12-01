// docker run --rm -v C:\Users\aa1558\contracts:/contracts solc-verify:latest '/contracts/doublealiasingd4n10.sol'
 /**Test configurations: 
 *  #Dimensions (D) : D = 4
 *   Size       (n) : n = 10  
 *  Value-to-memory : No
 *   Single Aliasing: No
 *   Double Aliasing: Yes
 *    Initialization: No
 */
 /* Test result:
 doublealiasingd3n10::doublealiasingd3n10f: ERROR
 - /contracts/doublealiasingd4n10.sol:23:2: Postcondition 'x[i][m][n][o] == value ' might not hold at end of function.
doublealiasingd3n10::[implicit_constructor]: OK
Errors were found by the verifier.
*/
pragma solidity ^0.5.0;

contract doublealiasingd3n10 {
    
/// @notice precondition i < 10
/// @notice precondition j < 10
/// @notice precondition k < 10
/// @notice precondition l < 10
/// @notice precondition m < 10
/// @notice precondition n < 10
/// @notice precondition o < 10

/// @notice postcondition x[i][m][n][o] == value 

 function doublealiasingd3n10f(uint8[10][10][10][10] memory x, uint8 i, uint8 j, uint8 k, uint8 l, uint8 m, uint8 n, uint8 o, uint8 value, uint8[10][10][10][10] memory y, uint8[10][10][10][10] memory z) 
    pure
    public 
    returns (uint8[10][10][10][10] memory)  
    {
      x[i] = z[j];
      z[j][k] = y[l][m];
      y[l][m][n][o]= value;
      return x;
    }
}