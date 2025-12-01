// docker run --rm -v C:\Users\aa1558\contracts:/contracts solc-verify:latest '/contracts/singlealiasingdynamicd2.sol'
// Test for single level aliasing for dynamic memory array (singlealiasingdynamicd2.sol).
 /**Test configurations: 
 *  #Dimensions (D) : 2D
 *   Size       (n) : NA
 *  Value-to-memory : No
 *   Single Aliasing: Yes
 *   Double Aliasing: No
 *    Initialization: No
 */
 /* Test result:
 singlealiasingdynamicd2::singlealiasingdynamicd2f: ERROR
 - /contracts/singlealiasingdynamicd2.sol:19:2: Postcondition 'x[i][j] == value' might not hold at end of function.
singlealiasingdynamicd2::[implicit_constructor]: OK
Use --show-warnings to see 2 warnings.
Errors were found by the verifier.
 */

pragma experimental ABIEncoderV2;
contract singlealiasingdynamicd2 {

  
/// @notice precondition i < x.length
/// @notice precondition j <  x.length

///@notice postcondition x[i][j] == value
 function singlealiasingdynamicd2f(uint8[][] memory x, uint8 i, uint8 j, uint8 k, uint8 value, uint8[][] memory y) 
    pure 
    public 
    returns (uint8[][] memory)  
    {
     x[i] = y[j];
      y[j][k] = value;
      return x;
    }

}
