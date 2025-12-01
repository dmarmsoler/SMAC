// ./docker_solcmc examples assignd2n20.sol assignd2n20 60 eld -horn
// ./docker_solcmc examples assignd2n20.sol assignd2n20 60 z3
 /**Test configurations: 
 *  #Dimensions (D) : D = 2
 *   Size       (n) : n = 20
 *  Value-to-memory : Yes
 *   Single Aliasing: No 
 *   Double Aliasing: No
 *    Initialization: No
 */
 /* Test result:
 ./docker_solcmc examples assignd2n20.sol assignd2n20 60 eld -horn

 ### Running with solver eld
### Entire output:
{ errors: [], sources: { fileName: { id: 0 } } }
### End output


####### Final solving and time report:
Solver eld solved in 2261.448112010956ms
./docker_solcmc examples assignd2n20.sol assignd2n20 60 z3

### Running with solver z3
### Entire output:
{ errors: [], sources: { fileName: { id: 0 } } }
### End output


####### Final solving and time report:
Solver z3 solved in 151.2905749976635ms
 */
contract assignd2n20 {
   
    constructor() {
    }

  function assignd2n20f(uint8[20][20] memory x, uint8 i, uint8 j, uint8 value) 
    pure
    public 
    returns (uint8[20][20] memory)  
    {
        x[i][j] = value;
        assert (x[i][j] == value);
      return x;
    }

}
