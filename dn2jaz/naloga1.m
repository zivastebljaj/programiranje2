
X = [1 2 3 4 5 6 7 8 9 10];
Y = [8 9 6 7 4 3 2 3 2 1];

f = @(t) (t(1) .* exp(t(2) .* X) - Y);
Jf = @(t) [(exp(t(2) .* X))'; (t(1) .* exp(t(2) .* X) .* X)']'; % a; b
zac_pr = [11; -0.2];

pribG = newton(f, Jf, zac_pr, 0, 50);

% Newton
n_f = @(t) [
    sum(2 * (Y - t(1) .* exp(t(2) .* X)) .* exp(t(2) .* X)); % odvod po alpha
    sum(2 * (Y - t(1) .* exp(t(2) .* X)) .* t(1) .* exp(t(2) .* X) .* X) % odvod po beta
];

n_df = @(t) [
    sum(-2 .* exp(2 * t(2) .* X)), ... % aa
    sum(2 * (Y - 2 * t(1) .* exp(t(2) .* X)) .* exp(t(2) .* X) .* X); % ab
    sum(2 * (Y - 2 * t(1) .* exp(t(2) .* X)) .* exp(t(2) .* X) .* X), ... % ba
    sum(2 * t(1) .* (X .^ 2) .* exp(t(2) .* X) .* (Y - 2 * t(1) .* exp(t(2) .* X))) % bb
];

pribN = newtonova_metoda(n_f, n_df, zac_pr, 0, 50);

% fminsearch

s_f = @(t) sum(f(t) .^ 2);

dejansko = fminsearch(s_f, zac_pr);
