// ./docker_solcmc examples assigndynamicd2.sol assigndynamicd2 60 eld -horn
// ./docker_solcmc examples assigndynamicd2.sol assigndynamicd2 60 z3
 /**Test configurations: 
 *  #Dimensions (D) : D = 2
 *   Size       (n) : NA
 *  Value-to-memory : Yes
 *   Single Aliasing: No
 *   Double Aliasing: No
 *    Initialization: No
 */
 /* Test result:
 ./docker_solcmc examples assigndynamicd2.sol assigndynamicd2 60 eld -horn

 ### Running with solver eld
### Entire output:
{ errors: [], sources: { fileName: { id: 0 } } }
### End output


####### Final solving and time report:
Solver eld solved in 2333.3528819978237ms

./docker_solcmc examples assigndynamicd2.sol assigndynamicd2 60 z3

### Running with solver z3
### Entire output:
{ errors: [], sources: { fileName: { id: 0 } } }
### End output


####### Final solving and time report:
Solver z3 solved in 98.8347530066967ms
 */
contract assigndynamicd2 {
   
    constructor() {
    }

function assigndynamicd2f(uint8[][] memory x, uint8 i, uint8 j, uint8 value) 
    pure
    public 
    returns (uint8[][] memory)  
    {
      x[i][j] = value;
      assert (x[i][j] == value);
      return x;
    }

}
