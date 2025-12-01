// ./docker_solcmc examples assignd4n5.sol assignd4n5 60 eld -horn
// ./docker_solcmc examples assignd4n5.sol assignd4n5 60 z3
/**Test configurations: 
 *  #Dimensions (D) : D = 4
 *   Size       (n) : n = 5
 *  Value-to-memory : Yes
 *   Single Aliasing: No
 *   Double Aliasing: No
*    Initialization: No
 */
 /* Test result:
 ./docker_solcmc examples assignd4n5.sol assignd4n5 60 eld -horn

 ### Running with solver eld
### Entire output:
{ errors: [], sources: { fileName: { id: 0 } } }
### End output


####### Final solving and time report:
Solver eld solved in 3022.60078600049ms
./docker_solcmc examples assignd4n5.sol assignd4n5 60 z3

### Running with solver z3
### Entire output:
{ errors: [], sources: { fileName: { id: 0 } } }
### End output


####### Final solving and time report:
Solver z3 solved in 112.14247298240662ms
 */
contract assignd4n5 {
   
    constructor() {
    }

function assignd4n5f(uint8[5][5][5][5] memory x, uint8 i, uint8 j, uint8 k, uint8 l, uint8 value) 
    pure
    public 
    returns (uint8[5][5][5][5] memory)  
    {
      x[i][j][k][l] = value;
      assert(x[i][j][k][l] == value);
      return x;
    }


}
