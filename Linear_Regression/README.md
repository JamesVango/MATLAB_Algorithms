MATLAB_Linear-Regression
============================
Computes the linear regression of a data set
## Inputs:
x = x-values for our data set
y = y-values for our data set

EX linearRegression(x,y)

lufactor(A)

## Outputs:
fX = x-values with outliers removed
fY = y-values with outliers removed
slope = slope from the linear regression y=mx+b
intercept =  intercept from the linear regression y=mx+b
Rsquared = R^2, a.k.a. coefficient of determination


## Code Explained:
1. MATLAB Checks the lengths of the x y inputs
2. MATLAB Creates the quartiles.
3. MATLAB Reshapes the x and y values after sorting them.
4. MATLAB Removes outliers
5. MATLAB Finds mean average values
6. MATLAB Finds the slope and intercept of the linear regression line
7. MATLAB Finds the sum of the squares and the sum of residuals
8. MATLAB Finds R Squared
