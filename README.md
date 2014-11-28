Genetic-Algorithm-Code
======================

MATLAB implemetation of genetic algorithm for solving optimization problems. 

The program takes the input in following format:
1. Objective Function- 0 for minimization / 1 for maximization
2. bit precision 
3. population of the genes.
4. Crossover probability 
5. Mutation probability 
6. no. of variables followed by Variable name, its bounds.

The program returns optimum value (approximately optimum solution or local optima). Crossover probability and mutation probability are wisely chosen to ensure the program won't stuck at local optimas or plateaus.

