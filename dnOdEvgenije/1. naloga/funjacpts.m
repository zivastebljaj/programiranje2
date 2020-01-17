function JF = funjacpts(alpha,beta,X,Y)
% Jacobijeva matrika preslikave, ki meri odmik tock od funkcije f oblike
% f(x) = alpha*exp(beta*x)

eb = exp(beta*X);
xeby2aeb = X.*eb.*(Y-2*alpha*eb);

JF = zeros(2);
JF(1,1) = -sum(eb.^2);
JF(1,2) = sum(xeby2aeb);
JF(2,1) = JF(1,2);
JF(2,2) = alpha*X'*xeby2aeb;

end