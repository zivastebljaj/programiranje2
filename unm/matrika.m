[u, l, c] = razcep(a);
A = diag(primes(224737)) + diag(ones(19998,1), 2) + diag(c(3:20000),-2);
U = diag(u)+diag(ones(19998,1),2);
L = diag(ones(20000)) + diag(l(3:20000), -2);