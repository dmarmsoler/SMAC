// docker run --rm -v C:\Users\aa1558\contracts:/contracts solc-verify:latest '/contracts/assignd3n5.sol'
/**Test configurations: 
 *  #Dimensions (D) : D = 3
 *   Size       (n) : n = 5
 *  Value-to-memory : Yes 
 *   Single Aliasing: No 
 *   Double Aliasing: No
 *    Initialization: No
 */
 /* Test result:
 assignd3n5::assignd3n5f: OK
assignd3n5::[implicit_constructor]: OK
No errors found.
 */
pragma solidity ^0.5.0;

contract assignd3n5 {

/// @notice precondition i < 5
/// @notice precondition j < 5
/// @notice precondition k < 5
/// @notice precondition x[i][j][k] != value
/// @notice postcondition x[i][j][k] == value
function assignd3n5f(uint8[5][5][5] memory x, uint8 i, uint8 j, uint8 k, uint8 value) 
    pure 
    public 
    returns (uint8[5][5][5] memory)  
    {
      x[i][j][k] = value;
      return x;
    }

}