// ./docker_solcmc examples singlealiasingd2n20.sol singlealiasingd2n20 60 eld -horn
// ./docker_solcmc examples singlealiasingd2n20.sol singlealiasingd2n20 60 z3
 /**Test configurations: 
 *  #Dimensions (D) : D = 2
 *   Size       (n) : n = 20
 *  Value-to-memory : No
 *   Single Aliasing: Yes
 *   Double Aliasing: No
 *    Initialization: No
 */
 /* Test result:
 ./docker_solcmc examples singlealiasingd2n20.sol singlealiasingd2n20 60 eld -horn
### Running with solver eld
### Entire output:
{
  errors: [
    {
      component: 'general',
      errorCode: '7400',
      formattedMessage: 'Warning: Requested contract "singlealiasingd2n20" does not exist in source "fileName".\n' +
        '\n',
      message: 'Requested contract "singlealiasingd2n20" does not exist in source "fileName".',
      severity: 'warning',
      type: 'Warning'
    },
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
        'test12.constructor()\n' +
        'test12.t12(x, 255, 254, 255, 254, y)\n' +
        '  --> fileName:22:7:\n' +
        '   |\n' +
        '22 |       assert (x[i][k] == value || x[j][k] == value);\n' +
        '   |       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n' +
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
        'test12.constructor()\n' +
        'test12.t12(x, 255, 254, 255, 254, y)',
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
test12.constructor()
test12.t12(x, 255, 254, 255, 254, y)
  --> fileName:22:7:
   |
22 |       assert (x[i][k] == value || x[j][k] == value);
   |       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^


##### End counterexample


####### Final solving and time report:
Solver eld solved in 3912.671957015991ms

./docker_solcmc examples singlealiasingd2n20.sol singlealiasingd2n20 60 z3
### Running with solver z3
### Entire output:
{
  errors: [
    {
      component: 'general',
      errorCode: '7400',
      formattedMessage: 'Warning: Requested contract "singlealiasingd2n20" does not exist in source "fileName".\n' +
        '\n',
      message: 'Requested contract "singlealiasingd2n20" does not exist in source "fileName".',
      severity: 'warning',
      type: 'Warning'
    },
    {
      component: 'general',
      errorCode: '6328',
      formattedMessage: 'Warning: CHC: Assertion violation happens here.\n' +
        '  --> fileName:22:7:\n' +
        '   |\n' +
        '22 |       assert (x[i][k] == value || x[j][k] == value);\n' +
        '   |       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n' +
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
  --> fileName:22:7:
   |
22 |       assert (x[i][k] == value || x[j][k] == value);
   |       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^


##### End counterexample


####### Final solving and time report:
Solver z3 solved in 159.0858759880066ms
 */
contract test12 {
   
    constructor() {
    }

  function t12(uint8[20][20] memory x, uint8 i, uint8 j, uint8 k, uint8 value, uint8[20][20] memory y) 
    pure
    public 
    returns (uint8[20][20] memory)  
    {
      x[i] = y[j];
      y[j][k] = value;
      assert (x[i][k] == value || x[j][k] == value);
      return x;
    }

}
