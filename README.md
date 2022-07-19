# Magma funcions on quotient modular curves

Different functions to compute genus, Jacobian decomposition, number of $\mathbb{F}_{q^n}$-points, and also different functions on quotient modular curves $X_0(N)/W_N$

## Examples

- Compute decomposition of the Jacobian of $X_0(366) / \langle w_{61}, w_2 \rangle$

```magma
load "function.m";
N := 366; // Level
TN := [* 61, 122, 2, 1 *]; // Subgroup of involutions
prec := 20; // Number of coefficients of the q-expansion
HH := JacobianDecompositionQuotientX0NWN(N, TN, prec, #TN);
print HH[1]; // Should return 11111111111111 if compute the exact Jacobian decomposition
print HH[2]; // List the modular forms with q-expansion that are factor of the Jacobian, one could repeated if such factor appears
print HH[3]; // List the number fields of the list of modular forms given in HH[1] with the same order 
```
