// docker run --rm -v C:\Users\aa1558\contracts:/contracts solc-verify:latest '/contracts/assignd4n10.sol'
/**Test configurations: 
 *  #Dimensions (D) : D = 4
 *   Size       (n) : n = 10
 *  Value-to-memory : Yes 
 *   Single Aliasing: No
 *   Double Aliasing: No
 *    Initialization: No
 */
 /* Test result:
 assignd4n10::assignd4n10f: OK
assignd4n10::[implicit_constructor]: OK
Use --show-warnings to see 1 warning.
No errors found.
 */

pragma solidity ^0.5.0;

contract assignd4n10 {
    
/// @notice precondition i < 10
/// @notice precondition i < x.length
/// @notice precondition j < 10
/// @notice precondition j < x[i].length
/// @notice precondition k < 10
/// @notice precondition k < x[i][j].length
/// @notice precondition l < 10
/// @notice precondition l < x[i][j][l].length
/// @notice postcondition x[i][j][k][l] == value 
function assignd4n10f(uint8[10][10][10][10] memory x, uint8 i, uint8 j, uint8 k, uint8 l, uint8 value) 
    public 
    returns (uint8[10][10][10][10] memory)  
    {
      x[i][j][k][l] = value;
      return x;
    }


}