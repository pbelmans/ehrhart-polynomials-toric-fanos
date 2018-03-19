\\ read in the Magma output
\r dimension-2.gp
\r dimension-3.gp
\r dimension-4.gp
\r dimension-5.gp
\r dimension-6.gp
\r dimension-7.gp

maximum(polynomials) = vecmax(vector(#polynomials, n, vecmax(real(polroots(polynomials[n])))));

\\ this value must be negative for the canonical strip hypothesis to hold (so it is satisfied)
maximum(dim2)
maximum(dim3)
maximum(dim4)
maximum(dim5)
maximum(dim6)
maximum(dim7)
