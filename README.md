# A database of Ehrhart polynomials of moment polytopes for smooth toric Fano varieties

This repository contains the Ehrhart polynomials of the moment polytopes of smooth toric Fano varieties, up to dimension 7. Using this we can confirm Golyshev's canonical strip hypothesis.

## Introduction

The code in this repository can be used to compute the Ehrhart polynomials of the moment polytopes of smooth toric Fano varieties, up to dimension 7. Because this is a rather lengthy computation for dimension 7 we distribute these polynomials, so that you don't have to compute them yourselves.

The code in this repository moreover checks the canonical strip hypothesis for smooth toric Fano $n$-folds, where n = 2, ..., 7. This hypothesis was introduced by Golyshev in his paper [On the canonical strip](https://mathscinet.ams.org/mathscinet-getitem?mr=2503098), and says that the real part of the roots of the Hilbert polynomial of a Fano variety with its anticanonical polarisation lie in the interval [-1,0].

By Proposition 9.4.3 of Cox--Little--Schenck we have

  Ehrhart(moment polytope) = Hilbert(variety)

So the code in this repository checks the canonical strip hypothesis for smooth toric Fano varieties by computing the Ehrhart polynomial for the duals of the fan polytopes in the databases listed on [Magma's database download page](http://magma.maths.usyd.edu.au/magma/download/db/).


## Instructions to use the data

### Using the data

For our purposes (which is checking the real part of the roots of the Hilbert polynomial) the output is provided as [Pari/GP](https://pari.math.u-bordeaux.fr) files, one for each dimension, listing all the polynomials, prefixed by their ID.

For dimensions 2, ..., 6 these IDs are as explained in README.txt of [smoothfano.tar.gz](http://magma.maths.usyd.edu.au/magma/download/db/smoothfano.tar.gz), running from 1 to 8635. These IDs correspond to the numbering system used for the [Graded Rings Database](http://www.grdb.co.uk/forms/toricsmooth).

For dimension 7 these IDs are as explained in README.txt of [smoothfano7.tar.gz](http://magma.maths.usyd.edu.au/magma/download/db/smoothfano7.tar.gz), running from 1 to 72256. Unlike what is suggested in the README, this data is *em* not available in the Graded Rings Database.

The file `checks.gp` prints the maximum of the real parts of the roots of the Hilbert polynomials, thus confirming Golyshev's canonical strip hypothesis for these varieties.


### Using the code

The following code downloads the database for smooth toric Fano n-folds, for n = 2, ..., 7.

```bash
wget "http://magma.maths.usyd.edu.au/magma/download/db/smoothfano.tar.gz"
wget "http://magma.maths.usyd.edu.au/magma/download/db/smoothfano7.tar.gz"
tar -xzvf smoothfano.tar.gz
tar -xzvf smoothfano7.tar.gz
```

Then run

```bash
for i in {2..6}; do magma dimension-$i.magma&; done
```

and wait a few hours for the 6-dimensional case to finish. Or just use the output which is provided. For the 7-dimensional case you will have to rely on the provided output, or find a way to distribute the computation (like we did), as it takes a **long** time.

Finally, run

```bash
gp checks.gp
```

to check that the real part of the roots of the Hilbert polynomials is always negative. Maybe you will have to increase the allocated memory before the code checks all the polynomials.

## Requirements

To compute the Ehrhart polynomials yourself you will need [Magma](http://magma.maths.usyd.edu.au/magma/), but the whole point is that you don't have to recompute these.

To check Golyshev's canonical strip hypothesis you will need [Pari/GP](https://pari.math.u-bordeaux.fr).

One can easily modify the provided `.gp` files to an output format of your liking. If the need for more systematic access arises, please get in touch.
