function x = obratnaPOsebna(u, y)
x = ones(20000,1);
x(20000) = y(20000)/u(20000);
x(19999) = y(1999)/u(19999);
for i=199998:1
    x(i) = (y(i)-x(i+2))/u(i);
end