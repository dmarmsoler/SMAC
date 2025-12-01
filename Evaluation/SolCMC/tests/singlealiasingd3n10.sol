// ./docker_solcmc examples singlealiasingd3n10.sol singlealiasingd3n10 60 eld -horn
// ./docker_solcmc examples singlealiasingd3n10.sol singlealiasingd3n10 60 z3
 /**Test configurations: 
 *  #Dimensions (D) : D = 3
 *   Size       (n) : n = 10
 *  Value-to-memory : No
 *   Single Aliasing: Yes
 *   Double Aliasing: No
 *    Initialization: No
 */
 /* Test result:
 ./docker_solcmc examples singlealiasingd3n10.sol singlealiasingd3n10 60 eld -horn
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
        'value = 254\n' +
        '\n' +
        'Transaction trace:\n' +
        'singlealiasingd3n10.constructor()\n' +
        'singlealiasingd3n10.singlealiasingd3n10f(x, 0, 255, 0, 255, 254, y)\n' +
        '  --> fileName:23:7:\n' +
        '   |\n' +
        '23 |       assert (x[i][k][l] == value);\n' +
        '   |       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n' +
        '\n',
      message: 'CHC: Assertion violation happens here.\n' +
        'Counterexample:\n' +
        '\n' +
        'i = 0\n' +
        'j = 255\n' +
        'k = 0\n' +
        'l = 255\n' +
        'value = 254\n' +
        '\n' +
        'Transaction trace:\n' +
        'singlealiasingd3n10.constructor()\n' +
        'singlealiasingd3n10.singlealiasingd3n10f(x, 0, 255, 0, 255, 254, y)',
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
value = 254

Transaction trace:
singlealiasingd3n10.constructor()
singlealiasingd3n10.singlealiasingd3n10f(x, 0, 255, 0, 255, 254, y)
  --> fileName:23:7:
   |
23 |       assert (x[i][k][l] == value);
   |       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^


##### End counterexample


####### Final solving and time report:
Solver eld solved in 3932.737113982439ms

 ./docker_solcmc examples singlealiasingd3n10.sol singlealiasingd3n10 60 z3
### Running with solver z3
### Entire output:
{
  errors: [
    {
      component: 'general',
      errorCode: '6328',
      formattedMessage: 'Warning: CHC: Assertion violation happens here.\n' +
        '  --> fileName:23:7:\n' +
        '   |\n' +
        '23 |       assert (x[i][k][l] == value);\n' +
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
  --> fileName:23:7:
   |
23 |       assert (x[i][k][l] == value);
   |       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^


##### End counterexample


####### Final solving and time report:
Solver z3 solved in 123.24590602517128ms
 */
contract singlealiasingd3n10 {
   
    constructor() {
    }


 function singlealiasingd3n10f(uint8[10][10][10] memory x, uint8 i, uint8 j, uint8 k, uint8 l, uint8 value, uint8[10][10][10] memory y) 
    pure 
    public 
    returns (uint8[10][10][10] memory)  
    {
      x[i] = y[j];
      y[j][k][l] = value;
      assert (x[i][k][l] == value);
      return x;
    }

}
