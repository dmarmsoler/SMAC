// ./docker_solcmc examples initializationd2n1.sol initializationd2n1 60 eld -horn
// ./docker_solcmc examples initializationd2n1.sol initializationd2n1 60 z3
// SPDX-License-Identifier: GPL-3.0
  /**Test configurations: 
 *  #Dimensions (D) : D = 2
 *   Size       (n) : n = 1
 *  Value-to-memory : No
 *   Single Aliasing: No
 *   Double Aliasing: No
 *    Initialization: Yes
 */
 /* Test result:
 ./docker_solcmc examples initializationd2n1.sol initializationd2n1 60 eld -horn
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
        'initializationd2n1.constructor()\n' +
        'initializationd2n1.initializationd2n1f(x)\n' +
        '  --> fileName:15:9:\n' +
        '   |\n' +
        '15 |         assert (x[0][0] == false);\n' +
        '   |         ^^^^^^^^^^^^^^^^^^^^^^^^^\n' +
        '\n',
      message: 'CHC: Assertion violation happens here.\n' +
        'Counterexample:\n' +
        '\n' +
        '\n' +
        'Transaction trace:\n' +
        'initializationd2n1.constructor()\n' +
        'initializationd2n1.initializationd2n1f(x)',
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
initializationd2n1.constructor()
initializationd2n1.initializationd2n1f(x)
  --> fileName:15:9:
   |
15 |         assert (x[0][0] == false);
   |         ^^^^^^^^^^^^^^^^^^^^^^^^^


##### End counterexample


####### Final solving and time report:
Solver eld solved in 3408.2445130050182ms
asad@5CG415590F:/mnt/c/Users/aa1558/leonardoalt-cav_2022_artifact-64b7aab$ ./docker_solcmc examples initializationd2n1.sol initializationd2n1 60 z3
### Running with solver z3
### Entire output:
{
  errors: [
    {
      component: 'general',
      errorCode: '6328',
      formattedMessage: 'Warning: CHC: Assertion violation happens here.\n' +
        '  --> fileName:15:9:\n' +
        '   |\n' +
        '15 |         assert (x[0][0] == false);\n' +
        '   |         ^^^^^^^^^^^^^^^^^^^^^^^^^\n' +
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
  --> fileName:15:9:
   |
15 |         assert (x[0][0] == false);
   |         ^^^^^^^^^^^^^^^^^^^^^^^^^


##### End counterexample


####### Final solving and time report:
Solver z3 solved in 96.41873100399971ms
 */
 
contract initializationd2n1 {
   
    constructor() {
    }

    function initializationd2n1f(bool[1][1] memory x) pure public {
      require (x[0][0] == false);
        bool[1][1] memory y;
        y[0][0] = true;
        assert (x[0][0] == false);

    }
}
