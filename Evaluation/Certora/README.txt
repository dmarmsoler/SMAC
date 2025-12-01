 1-"tests" folder consists of two files:
	1.1- Solidity files (.sol)
	     -> Contains Solidity implementation of the test
	     -> Contains configuration of the test (as comments)
	1.2- Specification file expressed as Certora Verification Language (CVL) (.spec)
	     -> Contains declaration of methods and rules for corresponding test
	     -> Contains corresponding test result (as comments)

2- To run the memory tests in "tests" folder: (we use WSL Ubuntu 22.04 in Windows 11)
	2.1- Follow installation guide at: https://docs.certora.com/en/latest/docs/user-guide/install.html
	2.2- Once certora is installed then:
		2.2.1: Copy paste tests folder or content into your working directory 
		2.2.2: Find path to your working directory, suppose, $PATH$ = "path to working directory"
		2.2.3: Run following command to run assignd1n5.sol along with assignd1n5.spec;
			certoraRun $PATH$/assignd1n5.sol --verify assignd1n5:$PATH$/assignd1n5spec.spec	
 		2.2.4: Replace the name of the solidity tests and certora specification files in step 2-3 to run all the tests and reproduce corresponding results
	