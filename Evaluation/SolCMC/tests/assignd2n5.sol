// ./docker_solcmc examples assignd2n5.sol assignd2n5 60 eld -horn
// ./docker_solcmc examples assignd2n5.sol assignd2n5 60 z3
 /**Test configurations: 
 *  #Dimensions (D) : D = 2
 *   Size       (n) : n = 5
 *  Value-to-memory : Yes
 *   Single Aliasing: No 
 *   Double Aliasing: No
 *    Initialization: No
 */
 /*Test results:
 ./docker_solcmc examples assignd2n5.sol assignd2n5 60 eld -horn

 ### Running with solver eld
### Entire output:
{ errors: [], sources: { fileName: { id: 0 } } }
### End output


####### Final solving and time report:
Solver eld solved in 2717.8821790218353ms

./docker_solcmc examples assignd2n5.sol assignd2n5 60 z3

### Running with solver z3
### Entire output:
{ errors: [], sources: { fileName: { id: 0 } } }
### End output


####### Final solving and time report:
Solver z3 solved in 160.8244610130787ms
 */
contract assignd2n5 {
   
    constructor() {
    }

  function assignd2n5f(uint8[5][5] memory x, uint8 i, uint8 j, uint8 value) 
    pure
    public 
    returns (uint8[5][5] memory)  
    {
        x[i][j] = value;
        assert (x[i][j] == value);
      return x;
    }

}
