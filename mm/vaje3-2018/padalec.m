function [t,y,v] = padalec(parametri,zac,tk,n)
% PADALEC izracuna visine in hitrosti padalca v vertikalni smeri
% ob ustreznih casih t. 
%
% VHODNI PODATKI:
% parametri = [m,c,S]
%             m je masa,
%             c je koeficient upora (prib. 1 za normalen skok),
%             S presek padalca pravokotno na smer padanja
% zac = [y0;v0] ... zacetna visina in zacetna hitrost
% tk ... koncni cas, do katerega gledamo padanje
% n ... stevilo enakomerno razporejenih casovnih trenutkov opazovanja
%
% IZHODNI PODATKI:
% t ... delitev intervala [0,tk]
% y ... visine padalca ob casih t 
% v ... hitrosti padalca ob casih t
% (obe kolicini sta vektorja dolzine n)
%
% Za gostoto zraka privzamemo ro=1.3 kg/m^3, tezni pospesek je g=9.8 m/s^2.

% delitev intervala [0,tk]
t = linspace(0,tk,n);

% parametri
g = 9.8;
rho = 1.3;

% Funkcija f na desni strani sistema NDE: y' = f(t,y)
% Opomba: Ce je hitrost pozitivna, je sila upora negativna in obratno.
%         Zato namesto y(2).^2 uporabimo -abs(y(2)).*y(2).

K = 1/(2*parametri(1))*parametri(2)*parametri(3)*rho;

f = @(t,y) [y(2); - g - K*abs(y(2)).*y(2)];

[t,Y] = ode45(f,t,zac);

% visine in hitrosti padalca
y = Y(:,1);
v = Y(:,2);
end