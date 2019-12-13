function [x, l, u] = thomas(a, b, c, z)
n = length(a);
u = zeros(n, 1);
l = zeros(n -1,1);
u(1) = a(1);
for k = 1:n-1
    l(k) = c(k)/u(k);
    u(k+1) = a(k+1)-l(k)*b(k);
end