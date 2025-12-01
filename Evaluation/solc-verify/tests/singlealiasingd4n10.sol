// docker run --rm -v C:\Users\aa1558\contracts:/contracts solc-verify:latest '/contracts/singlealiasingd4n10.sol'
 /**Test configurations: 
 *  #Dimensions (D) : 4
 *   Size       (n) : 10
 *  Value-to-memory : No
 *   Single Aliasing: Yes
 *   Double Aliasing: No
 *    Initialization: No
 */
 /* Test result:
 singlealiasingd4n10::singlealiasingd4n10f: OK
singlealiasingd4n10::[implicit_constructor]: OK
Use --show-warnings to see 1 warning.
No errors found.
 */
 
contract singlealiasingd4n10 {
    
/// @notice precondition i < 10
/// @notice precondition i < x.length
/// @notice precondition j < 10
/// @notice precondition j < x[i].length
/// @notice precondition k < 10
/// @notice precondition k < x[i][j].length
/// @notice precondition l < 10
/// @notice precondition l < x[i][j][k].length
/// @notice precondition m < 10
/// @notice precondition i < y.length
/// @notice precondition j < y[i].length
/// @notice precondition k < y[i][j].length
/// @notice precondition l < y[i][j][k].length

/// @notice postcondition x[i][k][l][m] == value 
 function singlealiasingd4n10f(uint8[10][10][10][10] memory x, uint8 i, uint8 j, uint8 k, uint8 l, uint8 m, uint8 value, uint8[10][10][10][10] memory y) 
    pure
    public 
    returns (uint8[10][10][10][10] memory)  
    {
      x[i] = y[j];
      y[j][k][l][m] = value;
      return x;
    }

}