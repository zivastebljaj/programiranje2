%to�ke ki jih rabimo
tocke = [1, 8; 2, 9; 3, 6; 4,7; 5, 4; 6, 3; 7, 2; 8, 3; 9, 2; 10, 1];
X = tocke(:, 1);
Y = tocke(:, 2);


%zapi�emo funkcijo, zakaj jo zapi�emo tako glej spodnji link slide 10 in 11
%https://www.fmf.uni-lj.si/~plestenjak/Vaje/NmFin/Predavanja/NMFIN_1_2008_PP_13_PredoloceniSistemi.pdf
f = @(t) (t(1) .* exp(t(2) .* X) - Y);
Jf = @(t) [(exp(t(2) .* X))'; (t(1) .* exp(t(2) .* X) .* X)']'; % a; b

%ta za�etni pribli�ek je vzel Ga�per zato se zadovoljimo z njim tudi mi
zac_pr = [11; -0.2];

%na� gauss_newton je isti kot newton ker itak je point le v
%ustrezni za�etni matriki ki smo jo definirali zgoraj
%useeno nerdimo posebej datoteko gauss_newton da zgleda kot da vemo kaj
%delamo
pribG = gauss_newton(f, Jf, zac_pr, 0, 50)



%zdej se lotimo navadnega newtona za dani problem - to nalogo smo nardil na
%vajah zato uporabimo funkcije iz tam
%vse ena�be in izpeljave so v zbirki objavljeni na u�ilnici in sicer naloga
%4.5 na strani 53 (to se definitivno spla�a pogledat)
%funpts definira funkcijo v odvisnosti od alpha in beta s katero i��emo minimum izraza, funjacpts pa
%jacobijevo matriko te funkcije - oboje definiramo na roke v posebnih
%datotekah

% racunanje zacetnega priblizka za ta primer lahko naredimo z linearizacijo
% na  spodnji na�in (razlaga v zbirki, nal 4.5)
%A = [n sum(X); sum(X) X'*X];
%logY = log(Y);
%x0 = A\[sum(logY); X'*logY];
%x0 = [exp(x0(1)); x0(2)];

F = @(x) funpts(x(1),x(2),X,Y);
JF = @(x) funjacpts(x(1),x(2),X,Y);

pribN = newton(F, JF, zac_pr, 0, 50)

%asistent je za pribli�ek uporabil malo druga�ne argumente (�e to kej �teje
%slu�ajno) in sicer x1 = newton(F,JF,zac_pr,1e-10,500);



%primerjava z vgrajeno funkcijo fminsearch
s_f = @(t) sum(f(t) .^ 2);
dejansko = fminsearch(s_f, zac_pr)

