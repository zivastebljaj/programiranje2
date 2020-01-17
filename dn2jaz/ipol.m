function vrednost = ipol(tocke, vrednosti, x)
F = tabela(tocke, vrednosti);
a = F(1,:);
vrednost = hornerN(a, tocke, x);
end
