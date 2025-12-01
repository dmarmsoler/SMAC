// docker run --rm -v C:\Users\aa1558\contracts:/contracts solc-verify:latest '/contracts/assigndynamicd2.sol'
 /**Test configurations: 
 *  #Dimensions (D) : D = 2
 *   Size       (n) : NA
 *          Dynamic : Yes  
 *  Value-to-memory : Yes 
 *   Single Aliasing: No
 *   Double Aliasing: No
 *    Initialization: No
 */
 /* Test result:
 assigndynamicd2::assigndynamicd2f: OK
assigndynamicd2::[implicit_constructor]: OK
Use --show-warnings to see 2 warnings.
No errors found.
 */
 
pragma experimental ABIEncoderV2;
  
/// @notice precondition i < x.length
/// @notice precondition j <  x.length

///@notice postcondition x[i][j] == value
contract assigndynamicd2 {

  function assigndynamicd2f(uint8[][] memory x, uint8 i, uint8 j, uint8 value) 
    pure
    public 
    returns (uint8[][] memory)  
    {
        x[i][j] = value;
      return x;
    }

}