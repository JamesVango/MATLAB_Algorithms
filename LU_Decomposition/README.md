MATLAB_LU_Decomposition
============================
Uses Factorization to create a lower, upper, and permuation matrix using an input matrix.
## Inputs:
A = Square Matrix

EX input: A = [2,1
               0,3] 
lufactor(A)

## Outputs:
L = lower triangular matrix
U = upper triangular matrix
P = the permutation matrix


## Code Explained:
1. MATLAB checks for a square matrix.
2. MATLAB checks if the matrics is a 2x2.3x3, or 4x4. The code is not suited to adapt to any size matrix.
3. In the appropriate matrix size code, MATLAB creates a Permutation matrix as an identity matrix to be altered in case any pivoting needs to occur.
4. MATLAB begins creating the U matrix first, saving the "k" values used for later.
5. MATLAB uses the k values to create the L Matrix. 
6. MATLAB tests to see if the matrices we
