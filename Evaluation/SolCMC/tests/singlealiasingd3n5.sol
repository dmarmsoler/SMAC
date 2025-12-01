// ./docker_solcmc examples singlealiasingd3n5.sol singlealiasingd3n5 60 eld -horn
// ./docker_solcmc examples singlealiasingd3n5.sol singlealiasingd3n5 60 z3
 /**Test configurations: 
 *  #Dimensions (D) : 3
 *   Size       (n) : 5
 *  Value-to-memory : No
 *   Single Aliasing: Yes
 *   Double Aliasing: No
 *    Initialization: No
 */
 /* Test result:
 ./docker_solcmc examples singlealiasingd3n5.sol singlealiasingd3n5 60 eld -horn
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
        'l = 255\n' +
        'value = 254\n' +
        '\n' +
        'Transaction trace:\n' +
        'singlealiasingd3n5.constructor()\n' +
        'singlealiasingd3n5.singlealiasingd3n5f(x, 255, 254, 255, 255, 254, y)\n' +
        '  --> fileName:24:7:\n' +
        '   |\n' +
        '24 |       assert (x[j][k][l] == value || x[i][k][l] == value);\n' +
        '   |       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n' +
        '\n',
      message: 'CHC: Assertion violation happens here.\n' +
        'Counterexample:\n' +
        '\n' +
        'i = 255\n' +
        'j = 254\n' +
        'k = 255\n' +
        'l = 255\n' +
        'value = 254\n' +
        '\n' +
        'Transaction trace:\n' +
        'singlealiasingd3n5.constructor()\n' +
        'singlealiasingd3n5.singlealiasingd3n5f(x, 255, 254, 255, 255, 254, y)',
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
l = 255
value = 254

Transaction trace:
singlealiasingd3n5.constructor()
singlealiasingd3n5.singlealiasingd3n5f(x, 255, 254, 255, 255, 254, y)
  --> fileName:24:7:
   |
24 |       assert (x[j][k][l] == value || x[i][k][l] == value);
   |       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^


##### End counterexample


####### Final solving and time report:
Solver eld solved in 3980.5146889984608ms

./docker_solcmc examples singlealiasingd3n5.sol singlealiasingd3n5 60 z3
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
        '24 |       assert (x[j][k][l] == value || x[i][k][l] == value);\n' +
        '   |       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n' +
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
24 |       assert (x[j][k][l] == value || x[i][k][l] == value);
   |       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^


##### End counterexample


####### Final solving and time report:
Solver z3 solved in 129.74118301272392ms
 */
contract singlealiasingd3n5 {
   
    constructor() {
    }

 function singlealiasingd3n5f(uint8[5][5][5] memory x, uint8 i, uint8 j, uint8 k, uint8 l, uint8 value, uint8[5][5][5] memory y) 
    pure
    public 
    returns (uint8[5][5][5] memory)  
    {
      x[i] = y[j];
      y[j][k][l] = value;
      assert (x[j][k][l] == value || x[i][k][l] == value);
      return x;
    }

}
