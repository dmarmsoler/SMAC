// ./docker_solcmc examples doublealiasingd4n10.sol doublealiasingd4n10 60 eld -horn
// ./docker_solcmc examples doublealiasingd4n10.sol doublealiasingd4n10 60 z3
 /**Test configurations: 
 *  #Dimensions (D) : D = 4
 *   Size       (n) : n = 10
 *  Value-to-memory : No
 *   Single Aliasing: No
 *   Double Aliasing: Yes
 *    Initialization: No
 */
 /* Test result:
 ./docker_solcmc examples doublealiasingd4n10.sol doublealiasingd4n10 60 eld -horn
### Running with solver eld
### Entire output:
{
  errors: [
    {
      component: 'general',
      errorCode: '6328',
      formattedMessage: 'Warning: CHC: Assertion violation happens here.\n' +
        'Counterexample:\n' +
        '\n' +
        'i = 0\n' +
        'j = 255\n' +
        'k = 0\n' +
        'l = 255\n' +
        'm = 0\n' +
        'n = 0\n' +
        'o = 255\n' +
        'value = 1\n' +
        '\n' +
        'Transaction trace:\n' +
        'doublealiasingd4n10.constructor()\n' +
        'doublealiasingd4n10.doublealiasingd4n10f(x, 0, 255, 0, 255, 0, 0, 255, 1, y, z)\n' +
        '  --> fileName:25:7:\n' +
        '   |\n' +
        '25 |       assert (x[i][k][m][o] == value);\n' +
        '   |       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n' +
        '\n',
      message: 'CHC: Assertion violation happens here.\n' +
        'Counterexample:\n' +
        '\n' +
        'i = 0\n' +
        'j = 255\n' +
        'k = 0\n' +
        'l = 255\n' +
        'm = 0\n' +
        'n = 0\n' +
        'o = 255\n' +
        'value = 1\n' +
        '\n' +
        'Transaction trace:\n' +
        'doublealiasingd4n10.constructor()\n' +
        'doublealiasingd4n10.doublealiasingd4n10f(x, 0, 255, 0, 255, 0, 0, 255, 1, y, z)',
      severity: 'warning',
      sourceLocation: [Object],
      type: 'Warning'
    }
  ],
  sources: { fileName: { id: 0 } }
}
### End output
##### Solver eld cex:
Warning: CHC: Assertion violation happens here.
Counterexample:

i = 0
j = 255
k = 0
l = 255
m = 0
n = 0
o = 255
value = 1

Transaction trace:
doublealiasingd4n10.constructor()
doublealiasingd4n10.doublealiasingd4n10f(x, 0, 255, 0, 255, 0, 0, 255, 1, y, z)
  --> fileName:25:7:
   |
25 |       assert (x[i][k][m][o] == value);
   |       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^


##### End counterexample


####### Final solving and time report:
Solver eld solved in 4345.303317010403ms

 ./docker_solcmc examples doublealiasingd4n10.sol doublealiasingd4n10 60 z3
### Running with solver z3
### Entire output:
{
  errors: [
    {
      component: 'general',
      errorCode: '6328',
      formattedMessage: 'Warning: CHC: Assertion violation happens here.\n' +
        '  --> fileName:25:7:\n' +
        '   |\n' +
        '25 |       assert (x[i][k][m][o] == value);\n' +
        '   |       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n' +
        '\n',
      message: 'CHC: Assertion violation happens here.',
      severity: 'warning',
      sourceLocation: [Object],
      type: 'Warning'
    }
  ],
  sources: { fileName: { id: 0 } }
}
### End output
##### Solver z3 cex:
Warning: CHC: Assertion violation happens here.
  --> fileName:25:7:
   |
25 |       assert (x[i][k][m][o] == value);
   |       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^


##### End counterexample


####### Final solving and time report:
Solver z3 solved in 179.62740898132324ms
 */
contract doublealiasingd4n10 {
   
    constructor() {
    }

function doublealiasingd4n10f(uint8[10][10][10][10] memory x, uint8 i, uint8 j, uint8 k, uint8 l, uint8 m, uint8 n, uint8 o, uint8 value, uint8[10][10][10][10] memory y, uint8[10][10][10][10] memory z) 
    pure
    public 
    returns (uint8[10][10][10][10] memory)  
    {
      x[i] = z[j];
      z[j][k] = y[l][m];
      y[l][m][n][o]= value;
      assert (x[i][k][m][o] == value);
      return x;
    }
}