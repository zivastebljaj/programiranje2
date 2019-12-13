function [u, l, c] = razcep(a)
%a = primes(224737);
l = zeros(20000, 1);
u = zeros(20000,1);
l(3) = 1/2;
u(1) = 2;
u(2) = 3;
c = zeros(20000,1);
c(3)=1;
for i=4:20000
    c(i)=0.5*(a(i-3)+a(i-1));
end
for i=2:19998
    u(i) = a(i)-l(i);
    l(i+2) = (c(i+2))/(u(i));
end
u(19999) = a(19999)-l(19999);
u(20000) = a(20000)-l(20000);