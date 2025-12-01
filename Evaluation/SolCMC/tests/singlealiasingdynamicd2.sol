
     // ./docker_solcmc examples singlealiasingdynamicd2.sol singlealiasingdynamicd2 60 eld -horn
     // ./docker_solcmc examples singlealiasingdynamicd2.sol singlealiasingdynamicd2 60 z3
 /**Test configurations: 
 *  #Dimensions (D) : 2
 *   Size       (n) : NA
 *  Value-to-memory : No
 *   Single Aliasing: Yes
 *   Double Aliasing: No
 *    Initialization: No
 */
 /* Test result:
./docker_solcmc examples singlealiasingdynamicd2.sol singlealiasingdynamicd2 60 eld -horn
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
        'value = 254\n' +
        '\n' +
        'Transaction trace:\n' +
        'singlealiasingdynamicd2.constructor()\n' +
        'singlealiasingdynamicd2.singlealiasingdynamicd2f(x, 255, 0, 255, 254, y)\n' +
        '  --> fileName:26:7:\n' +
        '   |\n' +
        '26 |       assert (x[i][k] == value);\n' +
        '   |       ^^^^^^^^^^^^^^^^^^^^^^^^^\n' +
        '\n',
      message: 'CHC: Assertion violation happens here.\n' +
        'Counterexample:\n' +
        '\n' +
        'i = 255\n' +
        'j = 0\n' +
        'k = 255\n' +
        'value = 254\n' +
        '\n' +
        'Transaction trace:\n' +
        'singlealiasingdynamicd2.constructor()\n' +
        'singlealiasingdynamicd2.singlealiasingdynamicd2f(x, 255, 0, 255, 254, y)',
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
value = 254

Transaction trace:
singlealiasingdynamicd2.constructor()
singlealiasingdynamicd2.singlealiasingdynamicd2f(x, 255, 0, 255, 254, y)
  --> fileName:26:7:
   |
26 |       assert (x[i][k] == value);
   |       ^^^^^^^^^^^^^^^^^^^^^^^^^


##### End counterexample


####### Final solving and time report:
Solver eld solved in 3629.460751026869ms

./docker_solcmc examples singlealiasingdynamicd2.sol singlealiasingdynamicd2 60 z3
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
        '26 |       assert (x[i][k] == value);\n' +
        '   |       ^^^^^^^^^^^^^^^^^^^^^^^^^\n' +
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
26 |       assert (x[i][k] == value);
   |       ^^^^^^^^^^^^^^^^^^^^^^^^^


##### End counterexample


####### Final solving and time report:
Solver z3 solved in 115.3490110039711ms
 */
contract singlealiasingdynamicd2 {
   
    constructor() {
    }

 function singlealiasingdynamicd2f(uint8[][] memory x, uint8 i, uint8 j, uint8 k, uint8 value, uint8[][] memory y) 
    pure 
    public 
    returns (uint8[][] memory)  
    {
     x[i] = y[j];
      y[j][k] = value;
      assert (x[i][k] == value);
      return x;
    }

}
