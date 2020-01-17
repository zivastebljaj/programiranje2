function [x, k] =  gaussNewton(f, Jf, x0, tol, N)
x = x0;
dx = Inf;
k = 0;
while norm(dx)> tol && k <N
    k = k+1;
    J = Jf(x);
    dx = -(J' * J)\(J' * f(x));
    x = x + dx;
end
end