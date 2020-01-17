A = rand(1000);
x0 = rand(1000, 1);
tol = 1e-10;

matrika = A'*A;
inverz = inv(matrika);

[e1, ~, k] = potencna(matrika, x0, tol, 10);
%dobimo dominantno lastno vrednost e1 za matriko A'*A

[enn, ~, k] = potencna(inverz, x0, tol, 10);
%dobimo dominantno lastno vrednost za inv(A'*A), èe vzamemo inverz te
%lastne vrednosti pa dobimo ravno najmanjšo lastno vrednost za A'*A
en = 1/enn;

%za kappo rabmo uzet koren
kappa2 = sqrt(e1/en)
cond(A)