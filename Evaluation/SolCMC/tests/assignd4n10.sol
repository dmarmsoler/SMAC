// ./docker_solcmc examples assignd4n10.sol c60 eld -horn
// ./docker_solcmc examples assignd4n10.sol assignd4n10 60 z3
/**Test configurations: 
 *  #Dimensions (D) : D = 4
 *   Size       (n) : n = 10
 *  Value-to-memory : Yes
 *   Single Aliasing: No
 *   Double Aliasing: No
 *    Initialization: No
 */
 /* Test result:
 ./docker_solcmc examples assignd4n10.sol c60 eld -horn

 ### Running with solver eld
### Entire output:
{ errors: [], sources: { fileName: { id: 0 } } }
### End output


####### Final solving and time report:
Solver eld solved in 3190.9794389903545ms

./docker_solcmc examples assignd4n10.sol assignd4n10 60 z3

### Running with solver z3
### Entire output:
{ errors: [], sources: { fileName: { id: 0 } } }
### End output


####### Final solving and time report:
Solver z3 solved in 129.82670801877975ms
 */
contract assignd4n10 {
   
    constructor() {
    }

function assignd4n10f(uint8[10][10][10][10] memory x, uint8 i, uint8 j, uint8 k, uint8 l, uint8 value) 
    pure
    public 
    returns (uint8[10][10][10][10] memory)  
    {
      x[i][j][k][l] = value;
      assert (x[i][j][k][l] == value);
      return x;
    }


}
