//  docker run --rm -v C:\Users\aa1558\contracts:/contracts solc-verify:latest '/contracts/assignd3n10.sol'
/**Test configurations: 
 *  #Dimensions (D) : D = 3
 *   Size       (n) : n = 10
 *  Value-to-memory : Yes 
 *   Single Aliasing: No 
 *   Double Aliasing: No
 *    Initialization: No
 */
 /* Test result:
 assignd3n10::assignd3n10f: OK
assignd3n10::[implicit_constructor]: OK
No errors found.
 */
pragma solidity ^0.5.0;

contract assignd3n10 {

/// @notice precondition i < 10
/// @notice precondition j < 10
/// @notice precondition k < 10
/// @notice precondition x[i][j][k] != value
/// @notice postcondition x[i][j][k] == value
function assignd3n10f(uint8[10][10][10] memory x, uint8 i, uint8 j, uint8 k, uint8 value) 
    pure
    public 
    returns (uint8[10][10][10] memory)  
    {
      x[i][j][k] = value;
      return x;
    }

}