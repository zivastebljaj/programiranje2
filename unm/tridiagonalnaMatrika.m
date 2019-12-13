n = 20000;

b = ones(n - 2, 1);
a = zeros(n, 1);
c = zeros(n - 2, 1);

% napiše diagonalo s praštevili
% tukaj bi lahko uporabila tudi vgrajeno funkcijo a = primes(224737);
p = 1;
for k = 1:n
    while a(k) == 0
        if isprime(p)
            a(k) = p;
        end
        p = p + 1;
    end
    k = k + 1;
end

% izraèuna podpoddiagonalo c
c(1) = 1;
for k = 2:(n-2)
    c(k) = (a(k - 1)+ a(k + 1))/2;
end

% raèuna l in u
l = c;
u = a;
for j = 1:(n-2)
    l(j) = l(j)/u(j);
    u(j + 2) = u(j + 2) - l(j);
end

% neskonèno norma matrike A
m = max(a(1) + 1, a(2) + 1); % prvi dve vrstici
for j = 1:(n - 4)
    m = max(m, a(j + 2) + c(j) + 1);
end
m = max(max(m, a(n - 1) + c(n - 3)), a(n) + c(n - 2));
m

% neskonèno norma matrike L
lmax = max(1, 1);
for j = 1:(n - 2)
    lmax = max(lmax, 1 + l(j));
end

% neskonèno norma matrike U
umax = 0;
for j = 1:(n - 2)
    umax = max(umax, 1 + u(j));
end
umax = max(umax, u(n - 1));
umax = max(umax, u(n));

% prema substitucija
z = ones(n, 1);
y = z;
for k = 3:n
    y(k) = z(k) - l(k - 2) * y(k - 2);
end

% obratna substitucija
x = y;
x(n) = y(n)/u(n);
x(n - 1) = y(n - 1)/u(n - 1);
for k = (n - 2): (-1) : 1
    x(k) = (y(k) - x(k + 2))/u(k);
end

a;
c;
l;
u;
lmax
umax
x;
x(1) + 5*x(3) + x(5)

