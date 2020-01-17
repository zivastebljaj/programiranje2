load west0479;

A = west0479;
% damo tole vn iz sparse matrike
A  = full(A);

% nas QR razcep
[Q, R] = razsirjenQR2(A);

% tapravi QR razcep
[Q1, R1] = qr(A);

% preveri ce dobimo to kar hocemo
norm(Q * R - A)
norm(Q1 * R1 - A)

% preveri ce je Q ortogonalna
norm(Q)
norm(Q * Q' - eye(size(A, 1)))

% preveri ce je R zgornje trapezna
norm(R - triu(R))