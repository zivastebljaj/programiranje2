function [x, X, k] = gauss_newton(f, Jf, x0, tol, N)

%tole izvede Newtonovo metodo za re�evanje sistema linearnih ena�b

% x kon�ni pribli�ek za re�itev sistema f(x) = 0
% X tabela vseh izra�unanih pribli�kov
% k �tevilo opravljenih korakov

X = x0;
dx = Inf;
k = 0;

%primer kako do jacobija
%syms x y z
%jacobian([x*y*z, y^2, x + z], [x, y, z])

while norm(dx) > tol && k < N
    k = k+1;
    dx = -Jf(X(:,k))\f(X(:,k)); %Jf ji podamo!!
    X(:,k+1) = X(:,k) + dx;
end
x = X(:, k+1);
end