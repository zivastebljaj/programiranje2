function F = funpts(alpha,beta,X,Y)
% vsota kvadratov odmikov tock od funkcije f oblike
% f(x) = alpha*exp(beta*x)

%glej nalogo 4.5 na strani 48

%glej zvezek str 49
eb = exp(beta*X);
ebyaeb = eb.*(Y-alpha*eb);

F = zeros(2,1);
F(1) = sum(ebyaeb);
F(2) = alpha*X'*ebyaeb;

end