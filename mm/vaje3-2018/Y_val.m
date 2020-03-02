function Y = Y_val(T,parametri,zac)
% Y_VAL vrne visino in hitrost padalca ob casu T.
%
% VHODNI PODATKI:
% parametri = [m,c,S];
% zac = [y0;v0] ... zacetna visina in zacetna hitrost

% gravitacijski pospesek in koeficient upora
g = 9.8;
rho = 1.3;

% Funkcija f na desni strani sistema NDE: y' = f(t,y)
K = 1/(2*parametri(1))*parametri(2)*parametri(3)*rho;

f = @(t,y) [y(2); - g - K*abs(y(2)).*y(2)];

[~,Y] = ode45(f,[0,T],zac);

% potrebujemo visino in hitrost ob casu T
Y=Y(end,:);
end

