
//./docker_solcmc examples assignd1n5.sol assignd1n5 60 eld -horn
//./docker_solcmc examples assignd1n5.sol assignd1n5 60 z3

 /**Test configurations: 
 *  #Dimensions (D) : D = 1
 *   Size       (n) : n = 5
 *  Value-to-memory : Yes
 *   Single Aliasing: No 
 *   Double Aliasing: No
 *    Initialization: No
 */
 /* Test result:
 ./docker_solcmc examples assignd1n5.sol assignd1n5 60 eld -horn
 ### Running with solver eld
### Entire output:
{ errors: [], sources: { fileName: { id: 0 } } }
### End output


####### Final solving and time report:
Solver eld solved in 2400.69790700078ms

./docker_solcmc examples assignd1n5.sol assignd1n5 60 z3
### Running with solver z3
### Entire output:
{ errors: [], sources: { fileName: { id: 0 } } }
### End output


####### Final solving and time report:
Solver z3 solved in 127.97066301107407ms
 */
contract assignd1n5 {
   
    constructor() {
    }

 function  assignd1n5f(uint8[5] memory x, uint8 i, uint8 y) 
    pure
    public 
    returns (uint8[5] memory)  
    {
      x[i] = y;
       assert (x[i] == y);
      return x;
    }

}