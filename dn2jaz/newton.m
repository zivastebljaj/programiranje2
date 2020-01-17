function [x, X, k] =  newton(f, Jf, x0, tol, N)
X = x0;
dx = Inf;
k = 0;
while norm(dx)> tol && k <N
    k = k+1;
    dx = -Jf(X(:,k))\f(X(:,k));
    X(:, k+1) = X(:, k) +dx;
end
x = X(:, k+1);
end