function [vrednost_pri_h, tocna_vrednost] = cetrta_naloga(f, h, a, b)

n = (b-a)/h; %število toèk
x = linspace(a, b, n+1); %razdelimo interval

vsota = 0;
if n ~= 1
    for i = 2:n
        vsota = vsota + f(x(i));
    end
end

vrednost_pri_h = (2*vsota + f(a) + f(b))*h*0.5;
syms z
tocna_vrednost = int(sin(z)*cos(z), 0, 1);
end