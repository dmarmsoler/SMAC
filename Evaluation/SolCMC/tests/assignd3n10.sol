// ./docker_solcmc examples assignd3n10.sol assignd3n10 60 eld -horn
// ./docker_solcmc examples assignd3n10.sol assignd3n10 60 z3
/**Test configurations: 
 *  #Dimensions (D) : D = 3
 *   Size       (n) : n = 10
 *  Value-to-memory : Yes
 *   Single Aliasing: No 
 *   Double Aliasing: No
 *    Initialization: No
 */
 /* Test result:
 ./docker_solcmc examples assignd3n10.sol assignd3n10 60 eld -horn

 ### Running with solver eld
### Entire output:
{ errors: [], sources: { fileName: { id: 0 } } }
### End output


####### Final solving and time report:
Solver eld solved in 2720.016793012619ms

./docker_solcmc examples assignd3n10.sol assignd3n10 60 z3

### Running with solver z3
### Entire output:
{ errors: [], sources: { fileName: { id: 0 } } }
### End output


####### Final solving and time report:
Solver z3 solved in 106.00710201263428ms
 */

contract assignd3n10 {
   
    constructor() {
    }


function assignd3n10f(uint8[10][10][10] memory x, uint8 i, uint8 j, uint8 k, uint8 y) 
    pure
    public 
    returns (uint8[10][10][10] memory)  
    {
      x[i][j][k] = y;
      assert (x[i][j][k] == y);
      return x;
    }

}
