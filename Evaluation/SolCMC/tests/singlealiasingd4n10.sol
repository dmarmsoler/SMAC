// ./docker_solcmc examples singlealiasingd4n10.sol singlealiasingd4n10 60 eld -horn
// ./docker_solcmc examples singlealiasingd4n10.sol singlealiasingd4n10 60 z3
 /**Test configurations: 
 *  #Dimensions (D) : 4
 *   Size       (n) : 10
 *  Value-to-memory : No
 *   Single Aliasing: Yes
 *   Double Aliasing: No
 *    Initialization: No
 */
 /* Test result:
 ./docker_solcmc examples singlealiasingd4n10.sol singlealiasingd4n10 60 eld -horn
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
        'j = 0\n' +
        'k = 255\n' +
        'l = 0\n' +
        'm = 0\n' +
        'value = 1\n' +
        '\n' +
        'Transaction trace:\n' +
        'singlealiasingd4n10.constructor()\n' +
        'singlealiasingd4n10.singlealiasingd4n10f(x, 255, 0, 255, 0, 0, 1, y)\n' +
        '  --> fileName:24:7:\n' +
        '   |\n' +
        '24 |       assert (x[i][k][l][m] == value);\n' +
        '   |       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n' +
        '\n',
      message: 'CHC: Assertion violation happens here.\n' +
        'Counterexample:\n' +
        '\n' +
        'i = 255\n' +
        'j = 0\n' +
        'k = 255\n' +
        'l = 0\n' +
        'm = 0\n' +
        'value = 1\n' +
        '\n' +
        'Transaction trace:\n' +
        'singlealiasingd4n10.constructor()\n' +
        'singlealiasingd4n10.singlealiasingd4n10f(x, 255, 0, 255, 0, 0, 1, y)',
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
j = 0
k = 255
l = 0
m = 0
value = 1

Transaction trace:
singlealiasingd4n10.constructor()
singlealiasingd4n10.singlealiasingd4n10f(x, 255, 0, 255, 0, 0, 1, y)
  --> fileName:24:7:
   |
24 |       assert (x[i][k][l][m] == value);
   |       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^


##### End counterexample


####### Final solving and time report:
Solver eld solved in 4342.102306991816ms

 ./docker_solcmc examples singlealiasingd4n10.sol singlealiasingd4n10 60 z3
### Running with solver z3
### Entire output:
{
  errors: [
    {
      component: 'general',
      errorCode: '6328',
      formattedMessage: 'Warning: CHC: Assertion violation happens here.\n' +
        '  --> fileName:24:7:\n' +
        '   |\n' +
        '24 |       assert (x[i][k][l][m] == value);\n' +
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
  --> fileName:24:7:
   |
24 |       assert (x[i][k][l][m] == value);
   |       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^


##### End counterexample


####### Final solving and time report:
Solver z3 solved in 183.22186201810837ms
 */
contract singlealiasingd4n10 {
   
    constructor() {
    }

 function singlealiasingd4n10f(uint8[10][10][10][10] memory x, uint8 i, uint8 j, uint8 k, uint8 l, uint8 m, uint8 value, uint8[10][10][10][10] memory y) 
    pure
    public 
    returns (uint8[10][10][10][10] memory)  
    {
      x[i] = y[j];
      y[j][k][l][m] = value;
      assert (x[i][k][l][m] == value);
      return x;
    }

}
