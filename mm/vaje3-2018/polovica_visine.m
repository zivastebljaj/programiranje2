function t = polovica_visine(parametri,zac,t0)
% POLOVICA_VISINE izracuna ob katerem casu, se nahaja padalec na polovici
% zactne visine. 
%
% VHODNI PODATKI:
% parametri = [m,c,S];
% zac = [y0;v0] ... zacetna visina in zacetna hitrost
% t0 ... zacetni priblizek za tangentno metodo

F = @(x) Y_val(x,parametri,zac) - [zac(1)/2 0];

t = tangentna(F,t0,1e-12);

end




