// docker run --rm -v C:\Users\aa1558\contracts:/contracts solc-verify:latest '/contracts/assignd1n5.sol'
 /**Test configurations: 
 *  #Dimensions (D) : D = 1
 *   Size       (n) : n = 5
 *  Value-to-memory : Yes 
 *   Single Aliasing: No
 *   Double Aliasing: No
 *    Initialization: No
 */
 /* Test result:
 assignd1n5::assignd1n5f: OK
assignd1n5::[implicit_constructor]: OK
No errors found.
 */
pragma solidity ^0.5.0;
contract assignd1n5 {

  
/// @notice precondition i < 5
/// @notice precondition i < x.length
/// @notice postcondition x[i] == y
    function assignd1n5f(uint8[5] memory x, uint8 i, uint8 y) 
        pure
        public 
        returns (uint8[5] memory)  
    {
        x[i] = y;
        return x;
    }
}