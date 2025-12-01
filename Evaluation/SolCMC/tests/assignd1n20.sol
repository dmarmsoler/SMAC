// ./docker_solcmc examples assignd1n20.sol assignd1n20 60 eld -horn
// ./docker_solcmc examples assignd1n20.sol assignd1n20 60 z3
 /**Test results:
 *  #Dimensions (D) : D = 1
 *   Size       (n) : n = 20
 *  Value-to-memory : Yes
 *   Single Aliasing: No 
 *   Double Aliasing: No
 *    Initialization: No
 */
 /* Test result:
 ./docker_solcmc examples assignd1n20.sol assignd1n20 60 eld -horn

 ### Running with solver eld
### Entire output:
{ errors: [], sources: { fileName: { id: 0 } } }
### End output


####### Final solving and time report:
Solver eld solved in 1987.663269996643ms

./docker_solcmc examples assignd1n20.sol assignd1n20 60 z3

### Running with solver z3
### Entire output:
{ errors: [], sources: { fileName: { id: 0 } } }
### End output


####### Final solving and time report:
Solver z3 solved in 136.25225600600243ms
 */
contract assignd1n20 {
   
    constructor() {
    }

    function assignd1n20f(uint8[20] memory x, uint8 i, uint8 y) 
    pure
    public 
    returns (uint8[20] memory)  
    {
      x[i] = y;
      assert (x[i]==y);
      return x;
    }
}
