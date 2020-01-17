function x = obcutljivost(A)
N = 10;
n = length(A);
x0 = ones(n,1);
sigm1 = sqrt(potencna(A, x0, 0, N));
sigmn = sqrt(inverznaPotencna(@(x) A\x, x0, 0, N));
%sigm1 = potencna(A, x0, 0, N);
%sigmn = inverznaPotencna(@(x) A\x, x0, 0, N)
x = sigm1/sigmn;
end
