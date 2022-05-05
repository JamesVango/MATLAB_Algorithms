MATLAB_False-Position_Method
============================
Uses False Position methodology to find a root of x at y = 0
## Inputs:
func = function
xu, xl = upper and lower guesses
e_s = requested relative error(default = 0.0001%?)
maxiter = maximum allowable iterations 

EX input: falseposition(@(x) -x-4,-8,8,.001,50) or 
Testfunc = @(x) -x-4
falseposition(Testfunc,-8,8,.001,50)

## Outputs:
root = real root
fxr = function value at 'root'
e_a = approximate relative error (%)
iter = number of iterations

## Code Explained:
1. MATLAB checks for at lease three arguments.
2. MATLAB checks for the e_s and maxiter inputs. If these have not been given by the user, the functions has pre-set values
3. MATLAB tests xl and xu to see if the user has accidentally input the root of the function
4. MATLAB runs the equations as many iterations as specified or until the calculated Approximate relative error is below e_s.
