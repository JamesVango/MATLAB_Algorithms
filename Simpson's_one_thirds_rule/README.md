MATLAB_Simpson's_1/3_Rule
============================
Computes the integral of a set of data points
## Inputs:
x = x-values for our data set
y = y-values for our data set

EX Simpson(x,y)


## Outputs:
I = Integral Value

## Code Explained:
1. MATLAB Checks if x and y set are the same length of values
2. MATLAB Checks if x is evenly spaced
3. MATLAB Solves by Simpson's rule if there are an odd number of points
4. MATLAB Solves an odd number of points if there are an even number, and figures out the last segment by trapezoidal rule
5. MATLAB Adds up trapazoidal result and simpson's result
