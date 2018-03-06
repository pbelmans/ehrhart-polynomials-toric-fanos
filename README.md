Introduction
------------
The code in this repository checks the canonical strip hypothesis for smooth toric Fano n-folds, where n = 2, ..., 7. This hypothesis was introduced by Golyshev, and says that the roots of the Hilbert polynomial of a Fano variety with its anticanonical polarisation lie in the interval [-1,0].

By Proposition 9.4.3 of Cox--Little--Schenck we have

  Ehrhart(moment polytope) = Hilbert(variety)

So the code in this repository checks the canonical strip hypothesis for smooth toric Fano varieties by computing the Ehrhart polynomial for the duals of the fan polytopes in the databases listed on http://magma.maths.usyd.edu.au/magma/download/db/.

Instructions
------------

The following code downloads the database for smooth toric Fano n-folds, for n = 2, ..., 7.

   wget "http://magma.maths.usyd.edu.au/magma/download/db/smoothfano.tar.gz"
   wget "http://magma.maths.usyd.edu.au/magma/download/db/smoothfano7.tar.gz"
   tar -xzvf smoothfano.tar.gz
   tar -xzvf smoothfano7.tar.gz

Then run

   for i in {2..6}; do magma dimension-$i.magma&; done

and wait a few hours for the 6-dimensional case to finish. Or just use the output which is provided. For the 7-dimensional case you will have to rely on the provided output, or find a way to distribute the computation, as it takes a **long** time.

Finally, run

   gp checks.gp

to check that the real part of the roots of the Hilbert polynomials is always negative.

Requirements
------------

* Magma
* Pari/GP

