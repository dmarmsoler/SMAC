Pre-requisites: solc-verify tests are run using Docker, therefore, it is mandatory to have Docker installed before proceeding further. 

1-	"tests" folder consists of Solidity files (.sol) with following information in each test file:
	     -> Contains Solidity implementation of the test
	     -> Contains configuration of the test (as comments)
	     -> Contains corresponding test result (as comments)


2-	How to:
		2.1- Download and save Dockerfile_0.5 from: https://github.com/formalblocks/DbC-GPT/tree/main/solc_verify_generator, in your working folder
		2.2- Run following command: 
			docker build -t solc-verify -f .\Dockerfile_0.5
		2.3- Verify successful installation by executing:
			docker run --rm solc-verify:latest '/solidity/test/solc-verify/examples/Annotations.sol'
		2.4- Find the path of the current directory (Say, $PATH$ = "Current directory path")
 		2.5- Create a folder with name "contracts" in current directory
		2.6- Copy paste tests from tests folder to the contracts folder 
		2.7- To verify assignd1n5.sol, run:
			docker run --rm -v $PATH$:/contracts solc-verify:latest '/contracts/assignd1n5.sol'
		2.8- All tests can be run and verify by replacing testo1.sol in step 2.7 with desired test name