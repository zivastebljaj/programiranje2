function t = cas_padanja(parametri,zac,t0)
% CAS_PADANJA izracuna, koliko casa pada padalec, na katerega delujeta sili
% teze in zracnega upora. 
%
% VHODNI PODATKI:
% parametri = [m,c,S];
% zac = [y0;v0] ... zacetna visina in zacetna hitrost
% t0 ... zacetni priblizek za tangentno metodo

F = @(t) Y_val(t,parametri,zac);

t = tangentna(F,t0,1e-12);

end


