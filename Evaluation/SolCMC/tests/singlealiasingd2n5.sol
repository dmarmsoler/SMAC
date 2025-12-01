
// ./docker_solcmc examples singlealiasingd2n5.sol singlealiasingd2n5 60 eld -horn
// ./docker_solcmc examples singlealiasingd2n5.sol singlealiasingd2n5 60 z3
 /**Test configurations: 
 *  #Dimensions (D) : D = 2
 *   Size       (n) : n = 5
 *  Value-to-memory : No
 *   Single Aliasing: Yes
 *   Double Aliasing: No
 *    Initialization: No
 */
 /* Test result:
  ./docker_solcmc examples singlealiasingd2n5.sol singlealiasingd2n5 60 eld -horn
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
        'value = 254\n' +
        '\n' +
        'Transaction trace:\n' +
        'singlealiasingd2n5.constructor()\n' +
        'singlealiasingd2n5.singlealiasingd2n5f(x, 255, 254, 255, 254, y)\n' +
        '  --> fileName:23:7:\n' +
        '   |\n' +
        '23 |       assert (x[j][k] == value || x[i][k] == value );\n' +
        '   |       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n' +
        '\n',
      message: 'CHC: Assertion violation happens here.\n' +
        'Counterexample:\n' +
        '\n' +
        'i = 255\n' +
        'j = 254\n' +
        'k = 255\n' +
        'value = 254\n' +
        '\n' +
        'Transaction trace:\n' +
        'singlealiasingd2n5.constructor()\n' +
        'singlealiasingd2n5.singlealiasingd2n5f(x, 255, 254, 255, 254, y)',
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
value = 254

Transaction trace:
singlealiasingd2n5.constructor()
singlealiasingd2n5.singlealiasingd2n5f(x, 255, 254, 255, 254, y)
  --> fileName:23:7:
   |
23 |       assert (x[j][k] == value || x[i][k] == value );
   |       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^


##### End counterexample


####### Final solving and time report:
Solver eld solved in 3972.69219699502ms

./docker_solcmc examples singlealiasingd2n5.sol singlealiasingd2n5 60 z3
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
        '23 |       assert (x[j][k] == value || x[i][k] == value );\n' +
        '   |       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n' +
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
23 |       assert (x[j][k] == value || x[i][k] == value );
   |       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^


##### End counterexample


####### Final solving and time report:
Solver z3 solved in 166.58580300211906ms
 */
contract singlealiasingd2n5 {
   
    constructor() {
    }

  function singlealiasingd2n5f(uint8[5][5] memory x, uint8 i, uint8 j, uint8 k, uint8 value, uint8[5][5] memory y) 
    pure
    public 
    returns (uint8[5][5] memory)  
    {
      x[i] = y[j];
      y[j][k] = value;
      assert (x[j][k] == value || x[i][k] == value );
      return x;
    }

}
