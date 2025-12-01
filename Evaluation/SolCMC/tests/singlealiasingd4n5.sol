// ./docker_solcmc examples singlealiasingd4n5.sol singlealiasingd4n5 60 eld -horn
// ./docker_solcmc examples singlealiasingd4n5.sol singlealiasingd4n5 60 z3
 /**Test configurations: 
 *  #Dimensions (D) : D = 4
 *   Size       (n) : n = 5
 *  Value-to-memory : No
 *   Single Aliasing: Yes
 *   Double Aliasing: No
 *    Initialization: No
 */
 /* Test result:
 ./docker_solcmc examples singlealiasingd4n5.sol singlealiasingd4n5 60 eld -horn
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
        'j = 254\n' +
        'k = 255\n' +
        'l = 0\n' +
        'm = 255\n' +
        'value = 1\n' +
        '\n' +
        'Transaction trace:\n' +
        'singlealiasingd4n5.constructor()\n' +
        'singlealiasingd4n5.singlealiasingd4n5f(x, 255, 254, 255, 0, 255, 1, y)\n' +
        '  --> fileName:26:7:\n' +
        '   |\n' +
        '26 |       assert(x[i][k][l][m] == value || x[j][k][l][m] == value);\n' +
        '   |       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n' +
        '\n',
      message: 'CHC: Assertion violation happens here.\n' +
        'Counterexample:\n' +
        '\n' +
        'i = 255\n' +
        'j = 254\n' +
        'k = 255\n' +
        'l = 0\n' +
        'm = 255\n' +
        'value = 1\n' +
        '\n' +
        'Transaction trace:\n' +
        'singlealiasingd4n5.constructor()\n' +
        'singlealiasingd4n5.singlealiasingd4n5f(x, 255, 254, 255, 0, 255, 1, y)',
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
j = 254
k = 255
l = 0
m = 255
value = 1

Transaction trace:
singlealiasingd4n5.constructor()
singlealiasingd4n5.singlealiasingd4n5f(x, 255, 254, 255, 0, 255, 1, y)
  --> fileName:26:7:
   |
26 |       assert(x[i][k][l][m] == value || x[j][k][l][m] == value);
   |       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^


##### End counterexample


####### Final solving and time report:
Solver eld solved in 4263.12309601903ms

 ./docker_solcmc examples singlealiasingd4n5.sol singlealiasingd4n5 60 z3
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
        '26 |       assert(x[i][k][l][m] == value || x[j][k][l][m] == value);\n' +
        '   |       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n' +
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
26 |       assert(x[i][k][l][m] == value || x[j][k][l][m] == value);
   |       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^


##### End counterexample


####### Final solving and time report:
Solver z3 solved in 149.19106099009514ms
 */

contract singlealiasingd4n5 {
   
    constructor() {
    }


function singlealiasingd4n5f(uint8[5][5][5][5] memory x, uint8 i, uint8 j, uint8 k, uint8 l, uint8 m, uint8 value, uint8[5][5][5][5] memory y) 
    pure
    public 
    returns (uint8[5][5][5][5] memory)  
    {
      x[i] = y[j];
      y[j][k][l][m] = value;
      assert(x[i][k][l][m] == value || x[j][k][l][m] == value);
      return x;
    }

}
