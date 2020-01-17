function b = hornerN (a, X, x)
n = length(a) -1;
b = a(n +1);
for i = n:-1:1
    b = a(i) + (x - X(i))*b;
end