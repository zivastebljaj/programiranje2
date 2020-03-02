function nicla = tangentna(F,x0,tol)
% TANGENTNA izvaja tangentno metodo. Funkcija f in df sta podani
% z vektorsko funkcijo F. x0 je zacetni priblizek in tol toleranca.

% vrednosti funkcije in odvoda
y = F(x0);

while abs(y(1)) > tol
    
    x0 = x0 - y(1)/y(2);
    y = F(x0);
    
end

nicla = x0;
end