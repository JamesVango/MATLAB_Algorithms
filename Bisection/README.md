MATLAB__Bi-section_Algorithm
===================
uses bisection method to find the root of functions.
## Inputs and Outputs
#### input:
func = name of function 
xl, xu = lower and upper guesses
es = desired relative error (default = 0.0001%)
maxit = maximum allowable iterations (default = 50)
#### output:
root = real root
fx = function value at root
ea = approximate relative error (%)
iter = number of iterations

## Labelled parts
Extra info for less self-explanatory parts of the code
#### Part 1: 
Checks for Minimum number of arguments, checks for points on both sides of
root using sign multipliers. If iterations or error are not specified by
user, input pre-set values.

#### Part 2: 
Actual bisection methodology.
