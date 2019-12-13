function n_l = test(l)
n_l = max(1, 1);
for j = 1:(1998)
    n_l = max(n_l, 1 + l(j));
end
n_l