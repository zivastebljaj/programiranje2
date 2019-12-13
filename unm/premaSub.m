function y = premaSub(P, L, b)
y = P*b
for i = 2:n
    for k = 1:i-1
        y(i) = y(i) - L(i, k)*y(k)
    end
end