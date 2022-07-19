// EXAMPLES

// Compute decomposition of the Jacobian of X0(366) / < W_61, W_2 >
load "function.m"
N := 366; // Level
TN := [* 61, 122, 2, 1 *]; // Subgroup of involutions
prec := 20; // Number of coefficients of the q-expansion
HH := JacobianDecompositionQuotientX0NWN(N, TN, prec, #TN);
print HH[1]; // Should return 11111111111111
