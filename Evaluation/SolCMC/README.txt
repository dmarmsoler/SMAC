Pre-requisites: SolCMC tests are run using Docker, therefore, it is mandatory to have Docker installed before proceeding further. 

1-	"tests" folder consists of Solidity files (.sol) with following information in each test file:
	     -> Contains Solidity implementation of the test
	     -> Contains configuration of the test (as comments)
	     -> Contains corresponding test result (as comments)


2-	How to:
		2.1- Follow instructions to build Docker image locally, at:https://github.com/leonardoalt/cav_2022_artifact/tree/v1.0.2-extended
		2.2- Verify successful installation by executing:
			run ./docker_solcmc examples smoke_unsafe.sol Smoke 60 eld -horn
 		2.3- Copy paste tests from "tests" folder to the "examples" folder
		2.4- To verify assignd1n5.sol, 
			./docker_solcmc examples assignd1n5.sol assignd1n5 60 eld -horn
			./docker_solcmc examples assignd1n5.sol assignd1n5 60 z3
		2.5- All tests can be run and verify by replacing assignd1n5.sol in step 2.4 with desired test name