
    // ./docker_solcmc examples assigndynamicd1.sol assigndynamicd1 60 eld -horn
    // ./docker_solcmc examples assigndynamicd1.sol assigndynamicd1 60 z3
 /**Test configurations: 
 *     Dimension (D): 1
 *           Dynamic: Yes
 *  Value-to-memory : Yes
 *   Single Aliasing: No
 *   Double Aliasing: No
 *    Initialization: No
 */
 /* Test result:
 ./docker_solcmc examples assigndynamicd1.sol assigndynamicd1 60 eld -horn

 ### Running with solver eld
### Entire output:
{ errors: [], sources: { fileName: { id: 0 } } }
### End output


####### Final solving and time report:
Solver eld solved in 2029.824568003416ms

./docker_solcmc examples assigndynamicd1.sol assigndynamicd1 60 z3

### Running with solver z3
### Entire output:
{ errors: [], sources: { fileName: { id: 0 } } }
### End output


####### Final solving and time report:
Solver z3 solved in 94.6917319893837ms
 */
contract assigndynamicd1 {
   
    constructor() {
    }

 function assigndynamicd1f(uint8[] memory x, uint8 i, uint8 y) 
    pure 
    public 
    returns (uint8[] memory)  
    {
      x[i] = y;
      assert (x[i] == y);
      return x;
    }
}
