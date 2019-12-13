function y = premaPosebna(l)
y = ones(20000, 1);
for i=3:20000
    y(i)=1-l(i)*y(i);
end