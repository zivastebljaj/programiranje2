function [x, X, k] = iteracija (g, x0, tol, N)
X = x0;
k = 0;
while (k == 0 || abs(X(end) - X(end -1)) >= tol) && k < N
    X (k+2) = g(X(k+1));
    k = k+1;
end
x = X(k+1)
end