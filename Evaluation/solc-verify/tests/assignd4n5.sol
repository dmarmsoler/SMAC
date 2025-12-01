// docker run --rm -v C:\Users\aa1558\contracts:/contracts solc-verify:latest '/contracts/assignd4n5.sol'
/**Test configurations: 
 *  #Dimensions (D) : D = 4
 *   Size       (n) : n = 5
 *  Value-to-memory : Yes 
 *   Single Aliasing: No
 *   Double Aliasing: No
*    Initialization: No
 */
 /* Test result:
 assignd4n5::assignd4n5f: OK
assignd4n5::[implicit_constructor]: OK
No errors found.
 */

pragma solidity ^0.5.0;

contract assignd4n5 {
    
/// @notice precondition i < 5
/// @notice precondition i < x.length
/// @notice precondition j < 5
/// @notice precondition j < x[i].length
/// @notice precondition k < 5
/// @notice precondition k < x[i][j].length
/// @notice precondition l < 5
/// @notice precondition l < x[i][j][l].length
/// @notice postcondition x[i][j][k][l] == value 
function assignd4n5f(uint8[5][5][5][5] memory x, uint8 i, uint8 j, uint8 k, uint8 l, uint8 value) 
    pure 
    public 
    returns (uint8[5][5][5][5] memory)  
    {
      x[i][j][k][l] = value;
      return x;
    }


}