
// ./docker_solcmc examples doublealiasingd3n5.sol doublealiasingd3n5 60 eld -horn
// ./docker_solcmc examples doublealiasingd3n5.sol doublealiasingd3n5 60 z3
 /**Test configurations: 
 *  #Dimensions (D) : D = 3
 *   Size       (n) : n = 5
 *  Value-to-memory : No
 *   Single Aliasing: No
 *   Double Aliasing: Yes
 *    Initialization: No
 */
 /* Test result:
 ./docker_solcmc examples doublealiasingd3n5.sol doublealiasingd3n5 60 eld -horn
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
        'i = 255\n' +
        'j = 255\n' +
        'k = 255\n' +
        'l = 255\n' +
        'm = 0\n' +
        'n = 0\n' +
        'value = 1\n' +
        '\n' +
        'Transaction trace:\n' +
        'doublealiasingd3n5.constructor()\n' +
        'doublealiasingd3n5.doublealiasingd3n5f(x, 255, 255, 255, 255, 0, 0, 1, y, z)\n' +
        '  --> fileName:26:7:\n' +
        '   |\n' +
        '26 |       assert (x[i][k][n] == value );\n' +
        '   |       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n' +
        '\n',
      message: 'CHC: Assertion violation happens here.\n' +
        'Counterexample:\n' +
        '\n' +
        'i = 255\n' +
        'j = 255\n' +
        'k = 255\n' +
        'l = 255\n' +
        'm = 0\n' +
        'n = 0\n' +
        'value = 1\n' +
        '\n' +
        'Transaction trace:\n' +
        'doublealiasingd3n5.constructor()\n' +
        'doublealiasingd3n5.doublealiasingd3n5f(x, 255, 255, 255, 255, 0, 0, 1, y, z)',
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

i = 255
j = 255
k = 255
l = 255
m = 0
n = 0
value = 1

Transaction trace:
doublealiasingd3n5.constructor()
doublealiasingd3n5.doublealiasingd3n5f(x, 255, 255, 255, 255, 0, 0, 1, y, z)
  --> fileName:26:7:
   |
26 |       assert (x[i][k][n] == value );
   |       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^


##### End counterexample


####### Final solving and time report:
Solver eld solved in 4036.497424006462ms

  ./docker_solcmc examples doublealiasingd3n5.sol doublealiasingd3n5 60 z3
### Running with solver z3
### Entire output:
{
  errors: [
    {
      component: 'general',
      errorCode: '6328',
      formattedMessage: 'Warning: CHC: Assertion violation happens here.\n' +
        '  --> fileName:26:7:\n' +
        '   |\n' +
        '26 |       assert (x[i][k][n] == value );\n' +
        '   |       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n' +
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
  --> fileName:26:7:
   |
26 |       assert (x[i][k][n] == value );
   |       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^


##### End counterexample


####### Final solving and time report:
Solver z3 solved in 154.54630798101425ms
 */
contract doublealiasingd3n5 {
   
    constructor() {
    }

 function doublealiasingd3n5f(uint8[5][5][5] memory x, uint8 i, uint8 j, uint8 k, uint8 l, uint8 m, uint8 n, uint8 value, uint8[5][5][5] memory y, uint8[5][5][5] memory z) 
    pure
    public 
    returns (uint8[5][5][5] memory)  
    {
      x[i] = y[j];
      y[j][k] = z[l][m];
      z[l][m][n]= value;
      assert (x[i][k][n] == value );
      return x;
    }
}