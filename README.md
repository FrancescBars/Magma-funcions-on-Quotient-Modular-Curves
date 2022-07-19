# Magma funcions on quotient modular curves

Different functions to compute genus, Jacobian decomposition, number of $\mathbb{F}_{q^n}$-points, and also different functions on quotient modular curves $X_0(N)/W_N$

## Examples

- Compute decomposition of the Jacobian of $X_0(366) / \langle w_61, w_2 \rangle$

```magma
load "function.m";
N := 366; // Level
TN := [* 61, 122, 2, 1 *]; // Subgroup of involutions
prec := 20; // Number of coefficients of the q-expansion
HH := JacobianDecompositionQuotientX0NWN(N, TN, prec, #TN);
print HH[1]; // Should return 11111111111111
```
