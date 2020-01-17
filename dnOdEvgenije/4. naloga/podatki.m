funkcija = @(x)sin(x)*cos(x);
a = 0;
b = 1;

[T1, ~] = cetrta_naloga(funkcija, 1, a, b);
[T2, ~] = cetrta_naloga(funkcija, 0.5, a, b);
[T3, ~] = cetrta_naloga(funkcija, 0.25, a, b);
[T4, ~] = cetrta_naloga(funkcija, 0.125, a, b);

X = [0.125^2, 0.25^2, 0.5^2, 1^2];
vrednosti = flip([T1, T2, T3, T4]);

%namesto funkcije in interpolacije lahko s to funkcijo
p = polyfit(X, vrednosti, 3);
razlika = p(length(p))
