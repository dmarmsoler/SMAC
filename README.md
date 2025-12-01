# SMAC: A Calculus for Verifying Solidity-style Memory Arrays

This is supplementary material for the paper **SMAC: A Calculus for Verifying Solidity-style Memory Arrays**.
It contains the formalization of the memory model and the calculus discussed in the paper as well as the benchmark for the evaluation, the results of the experiments, and the case study.

## Content

- `Memory.thy`: The formalization of the memory model described in the paper.
- `Mcalc.thy`: A formalisation of SMAC and corresponding soundness proof.
- `Aliasing.thy`: The running example discussed in the paper.
- `Evaluation`: A folder containing the benchmark and evaluation results.
- `Stores.thy`: Integration of SMAC into Isabelle/Solidity.
- `ArrayBuilder.thy`: The case study discussed in the paper.
- `Data.ML`, `Invariant.ML`, `Specification.ML`, `Verification.ML`, `Utils.thy`, `Contract.thy`, `State_Monad.thy`, `State.thy`, `Solidity.thy`, `Solidity_Main.thy`, `WP.thy`: Copy of Isabelle/Solidity.
- `document.pdf`: A pdf document containing all the formalizations.

## Prerequisites

The formalization requires [Isabelle 2025](https://isabelle.in.tum.de/). Please follow the instructions on the Isabelle home page for your operating system.

In the following, we assume that the ``isabelle`` tool is available on the command line.
This might require to add the Isabelle binary directory to the ``PATH`` environment variable of your system.

## Using the Formalization

The formalization can be loaded into Isabelle/jEdit by executing 

```sh
isabelle jedit XYZ.thy
```

on the command line (where XYZ is the theory which should be loaded).
Alternatively, you can start Isabelle/jEdit by 
clicking on the Isabelle icon and loading the theory manually. 

To use a command line build to check all the files and generate a corresponding PDF document,
first add ``path/to/SMAC`` to your Isabelle roots file which is
a file called ``ROOTS`` in your Isabelle home directory.
Then, the build can be started by executing:

```sh
isabelle build -D .
```