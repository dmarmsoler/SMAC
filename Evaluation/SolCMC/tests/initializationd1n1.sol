// ./docker_solcmc examples initializationd1n1.sol initializationd1n1 60 eld -horn
// ./docker_solcmc examples initializationd1n1.sol initializationd1n1 60 z3
// SPDX-License-Identifier: GPL-3.0
  /**Test configurations: 
 *  #Dimensions (D) : D = 1
 *   Size       (n) : n = 1
 *  Value-to-memory : No
 *   Single Aliasing: No
 *   Double Aliasing: No
 *    Initialization: Yes
 */ 
 /* Test result:
 ./docker_solcmc examples initializationd1n1.sol initializationd1n1 60 eld -horn
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
        '\n' +
        'Transaction trace:\n' +
        'initializationd1n1.constructor()\n' +
        'initializationd1n1.initializationd1n1f(x)\n' +
        '  --> fileName:23:9:\n' +
        '   |\n' +
        '23 |         assert (x[0] == false);\n' +
        '   |         ^^^^^^^^^^^^^^^^^^^^^^\n' +
        '\n',
      message: 'CHC: Assertion violation happens here.\n' +
        'Counterexample:\n' +
        '\n' +
        '\n' +
        'Transaction trace:\n' +
        'initializationd1n1.constructor()\n' +
        'initializationd1n1.initializationd1n1f(x)',
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


Transaction trace:
initializationd1n1.constructor()
initializationd1n1.initializationd1n1f(x)
  --> fileName:23:9:
   |
23 |         assert (x[0] == false);
   |         ^^^^^^^^^^^^^^^^^^^^^^


##### End counterexample


####### Final solving and time report:
Solver eld solved in 2986.5781500041485ms

 ./docker_solcmc examples initializationd1n1.sol initializationd1n1 60 z3
### Running with solver z3
### Entire output:
{
  errors: [
    {
      component: 'general',
      errorCode: '6328',
      formattedMessage: 'Warning: CHC: Assertion violation happens here.\n' +
        '  --> fileName:23:9:\n' +
        '   |\n' +
        '23 |         assert (x[0] == false);\n' +
        '   |         ^^^^^^^^^^^^^^^^^^^^^^\n' +
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
  --> fileName:23:9:
   |
23 |         assert (x[0] == false);
   |         ^^^^^^^^^^^^^^^^^^^^^^


##### End counterexample


####### Final solving and time report:
Solver z3 solved in 93.1277280151844ms
 */
 
contract initializationd1n1 {
   
    constructor() {
    }

    function initializationd1n1f(bool[1] memory x) pure public {
      require (x[0] == false);
        bool[1] memory y;
        y[0] = true;
        assert (x[0] == false);

    }
}
