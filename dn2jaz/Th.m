function T = Th(f, n, a, b)
xs = zeros(n+1);
h = (b-a)/n;
for i=1:n+1
    xs(i)= a + (i-1)*h;
end
T=f(a);
for i=2:n
    x_i = xs(i);
    T = T + 2*f(x_i);
end
T = T + f(xs(n+1));
T = (h * T)/2;
    