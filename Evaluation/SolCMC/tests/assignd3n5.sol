// ./docker_solcmc examples assignd3n5.sol assignd3n5 60 eld -horn
// ./docker_solcmc examples assignd3n5.sol assignd3n5 60 z3
/**Test configurations: 
 *  #Dimensions (D) : D = 3
 *   Size       (n) : n = 5
 *  Value-to-memory : Yes
 *   Single Aliasing: No 
 *   Double Aliasing: No
 *    Initialization: No
 */
 /* Test result:
 ./docker_solcmc examples assignd3n5.sol assignd3n5 60 eld -horn

 ### Running with solver eld
### Entire output:
{ errors: [], sources: { fileName: { id: 0 } } }
### End output


####### Final solving and time report:
Solver eld solved in 2734.668195992708ms

 ./docker_solcmc examples assignd3n5.sol assignd3n5 60 z3

### Running with solver z3
### Entire output:
{ errors: [], sources: { fileName: { id: 0 } } }
### End output


####### Final solving and time report:
Solver z3 solved in 109.02928698062897ms
 */

contract assignd3n5 {
   
    constructor() {
    }

function assignd3n5f(uint8[5][5][5] memory x, uint8 i, uint8 j, uint8 k, uint8 y) 
    pure
    public 
    returns (uint8[5][5][5] memory)  
    {
      x[i][j][k] = y;
      assert (x[i][j][k] == y);
      return x;
    }

}
