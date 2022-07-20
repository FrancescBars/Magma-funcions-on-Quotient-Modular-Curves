# Magma funcions on quotient modular curves

Different functions to compute genus, Jacobian decomposition, number of $\mathbb{F}_{q^n}$-points, and also different functions on quotient modular curves $X_0(N)/W_N$

## Examples
- Compute number of fixed points of Atkin-Lehner involution $w_d$ on $X_0(366)$ with $(d,N/d)=1$ and the genus of $X_0(366)$
```magma
load "function.m";
N := 366; // Level
d:=61; // d an integer with (d,N/d)=1
d2:=2; // d2 an integer with (d2,N/d2)=1
Fixedsmall:=fixedpointsALinvsmall(N,d2);
print Fixedsmall; // Return the number of fixed points of w_{d2} when d2 is 1,2,3 or 4.
Fixedbig:=fixedpointsALinvbig(N,d);
print Fixedbig; // Return the number of fixed points of w_d when d is strictly bigger than 4
genus:=generexoN(N);
print genus; //Return the genus of X_0(N)
```

- For $X_0(366) / \langle w_{61}, w_2 \rangle$: compute its genus, Jacobian decomposition and number of $\mathbb{F}_{p^n}$-points

```magma
load "function.m";
N := 366; // Level
TN := [* 61, 122, 2, 1 *]; // Subgroup of involutions
t:=#TN; //Order of the subgroup of involutions
genusquotientcurve:=genereX0NQuotientWN(N,TN,t);
print genusquotientcurve; // Return the genus of the quotient modular curve X0(N)/TN
prec := 20; // Number of coefficients of the q-expansion
HH := JacobianDecompositionQuotientX0NWN(N, TN, prec, #TN);
print HH[1]; // Should return 11111111111111 if compute the exact Jacobian decomposition (if one factor appears n times, appears n times in Jacobian decomposition)
// If return 0000000000 then each factor appears in Jacobian decomposition BUT if one factors appears n times in Jacob.decom, here could appear m times with m ge n.
//For N square free as our example should appear 11111111111 and compute the programme directly the Jacobian decomposition
print HH[2]; // List the modular forms with q-expansion that are factor of the Jacobian, (could appear repeated if some factor of the Jacobian can appeared repeated)
print HH[3]; // List the number fields of the list of modular forms given in HH[2], the order is the same 
```
