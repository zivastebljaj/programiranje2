p = [-17 52 -42 8 0];
q = [-19.5 64 -60 16 0];
p_2 = conv(p,p);
q_2 = conv(q,q);
kvadrat = p_2 + q_2;
t = linspace(0,1);
vr_p = polyval(p, t);
vr_q = polyval(q, t);
X = [];
Y = [];
kvadrati = polyval(kvadrat,t);
odv1q = polyder(q);
odv2q = polyder(odv1q);
odv1p = polyder(p);
odv2p = polyder(odv1p);
for i = 1:100
    x = polyval(p, t(i));
    y = polyval(q, t(i));
    vr = polyval(kvadrat, t(i));
    if  (0.25 <= vr) &&(vr <= 1)
         X = [X x];
         Y = [Y y];
    end
end
plot(X, Y)
grid on;