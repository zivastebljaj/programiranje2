function [r,u]=poves_opne(f,R,n)
% POVES_OPNE racuna obliko prereza opne, napete
% na krozno zanko. 
%
% VHODNI PODATKI
% f je desna stran enacbe u'' + 1/r u' = f(r)
% R je radij krozne zanke
% n je stevilo notranjih delilnih tock
%
% IZHODNI PODATKI:
% r je delitev v r-smeri
% u je vektor priblizkov za resitev

r = linspace(0,R,n+1); % n+1 delilnih tock

h = R/n;

% nastavimo tridiagonalni sistem
rhs = h^2 * f(r(1:end-1)); % zadnjega ne vzamemo, saj je na robu opna pripeta

% poddiagonala
a = 1 - h/2 * 1./r(2:n);

% diagonala
b = -2 * ones(n,1);

% naddiagonala
c = 1 + h/2 * 1./r(2:n-1);
c=[2 c];

% resevanje tridiagonalnega sistema
u = resi3(a,b,c,rhs);

% zaradi pogoja u(R) = 0, dodamo niclo
u = [u;0];

