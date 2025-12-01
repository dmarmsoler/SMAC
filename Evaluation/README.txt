This folder contains memory array tests and corresponding results for Certora, solc-Verify and solCMC provers (Table 2 in paper). 

	1- There are three sub-folders: Certora, solc-verify and solCMC.
	2- Each sub-folder consists of a dedicated README file and "tests" folder
	3- Each folders README provides guide for reproducing the results for the tests in corresponding provers.
	4- "tests" folders contain solidity (.sol) test smart contacts used for each prover. 
	5- Naming convention of tests is
		
		Test Type | Dimension (D)|Size (n)| Name
__________________________|______________|________|_______________________
value-to-memory assign    |	1        |     5  |assignd1n5		  |
			  |	1	 |     20 |assignd1n20		  |
			  |	1	 |dynamic |assigndynamicd1	  |
 			  |	2        |     5  |assignd2n5		  |
			  |	2	 |     20 |assignd2n20		  |
			  |	2	 |dynamic |assigndynamicd2	  |
			  |	3        |     5  |assignd3n5		  |
			  |	3	 |     10 |assignd3n10		  |
			  |	4        |     5  |assignd4n5		  |
			  |	4	 |     10 |assignd4n10		  |
			  |		 |	  |			  |
Single level aliasing	  |	2        |     5  |singlealiasingd2n5	  |
			  |	2	 |     20 |singlealiasingd2n20	  |
			  |	2	 |dynamic |singlealiasingdynamicd2|
			  |	3        |     5  |singlealiasingd3n5	  |
			  |	3	 |     10 |singlealiasingd3n10	  |
			  |	4        |     5  |singlealiasingd4n5	  |
			  |	4	 |     10 |singlealiasingd4n10	  |
			  |		 |	  |			  |
double level aliasing	  |	3        |     5  |doublealiasingd3n5	  |
			  |	3	 |     10 |doublealiasingd3n10	  |
			  |	4        |     5  |doublealiasingd4n5	  |
			  |	4	 |     10 |doublealiasingd4n10	  |
			  |		 |	  |			  |
Variable initialization   |	1        |     1  |initializationd1n1	  |
			  |	2	 |     1  |initializationd2n1	  |
__________________________|______________|________|_______________________|
