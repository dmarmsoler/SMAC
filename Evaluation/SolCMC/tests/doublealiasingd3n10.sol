
  // ./docker_solcmc examples doublealiasingd3n10.sol doublealiasingd3n10 60 eld -horn
  // ./docker_solcmc examples doublealiasingd3n10.sol doublealiasingd3n10 60 z3
 /**Test configurations: 
 *  #Dimensions (D) : D = 3
 *   Size       (n) : n = 10
 *  Value-to-memory : No
 *   Single Aliasing: No
 *   Double Aliasing: Yes
 *    Initialization: No
 */
 /* Test result:
 ./docker_solcmc examples doublealiasingd3n10.sol doublealiasingd3n10 60 eld -horn
### Running with solver eld
### Entire output:
{
  errors: [
    {
      component: 'general',
      errorCode: '2018',
      formattedMessage: 'Warning: Function state mutability can be restricted to pure\n' +
        '  --> fileName:18:1:\n' +
        '   |\n' +
        '18 | function doublealiasingd3n10f(uint8 ... ory y, uint8[10][10][10] memory z) \n' +
        '   | ^ (Relevant source part starts here and spans across multiple lines).\n' +
        '\n',
      message: 'Function state mutability can be restricted to pure',
      severity: 'warning',
      sourceLocation: [Object],
      type: 'Warning'
    },
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
        'doublealiasingd3n10.constructor()\n' +
        'doublealiasingd3n10.doublealiasingd3n10f(x, 255, 255, 255, 255, 0, 0, 1, y, z)\n' +
        '  --> fileName:25:7:\n' +
        '   |\n' +
        '25 |       assert (x[i][k][n] == value);\n' +
        '   |       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n' +
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
        'doublealiasingd3n10.constructor()\n' +
        'doublealiasingd3n10.doublealiasingd3n10f(x, 255, 255, 255, 255, 0, 0, 1, y, z)',
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
doublealiasingd3n10.constructor()
doublealiasingd3n10.doublealiasingd3n10f(x, 255, 255, 255, 255, 0, 0, 1, y, z)
  --> fileName:25:7:
   |
25 |       assert (x[i][k][n] == value);
   |       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^


##### End counterexample


####### Final solving and time report:
Solver eld solved in 4143.70203101635ms

./docker_solcmc examples doublealiasingd3n10.sol doublealiasingd3n10 60 z3
### Running with solver z3
### Entire output:
{
  errors: [
    {
      component: 'general',
      errorCode: '2018',
      formattedMessage: 'Warning: Function state mutability can be restricted to pure\n' +
        '  --> fileName:18:1:\n' +
        '   |\n' +
        '18 | function doublealiasingd3n10f(uint8 ... ory y, uint8[10][10][10] memory z) \n' +
        '   | ^ (Relevant source part starts here and spans across multiple lines).\n' +
        '\n',
      message: 'Function state mutability can be restricted to pure',
      severity: 'warning',
      sourceLocation: [Object],
      type: 'Warning'
    },
    {
      component: 'general',
      errorCode: '6328',
      formattedMessage: 'Warning: CHC: Assertion violation happens here.\n' +
        '  --> fileName:25:7:\n' +
        '   |\n' +
        '25 |       assert (x[i][k][n] == value);\n' +
        '   |       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n' +
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
25 |       assert (x[i][k][n] == value);
   |       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^


##### End counterexample


####### Final solving and time report:
Solver z3 solved in 161.01067200303078ms
 */
contract doublealiasingd3n10 {
   
    constructor() {
    }

function doublealiasingd3n10f(uint8[10][10][10] memory x, uint8 i, uint8 j, uint8 k, uint8 l, uint8 m, uint8 n, uint8 value, uint8[10][10][10] memory y, uint8[10][10][10] memory z) 
    public 
    returns (uint8[10][10][10] memory)  
    {
      x[i] = y[j];
      y[j][k] = z[l][m];
      z[l][m][n]= value;
      assert (x[i][k][n] == value);
      return x;
    }
}