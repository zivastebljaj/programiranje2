function [Q, R] = razsirjenQR2(A)
[m,n] = size(A);
Q = eye(m);
for j = 1:n-1
    stevec = 0;
    indeks = 0;
    for i = j:n          
          if abs(A(i,j)) > 1e-5.*abs(A(j,j))
              stevec = stevec + 1;
              indeks = i;
          end
    end
    if stevec == 0
        continue
    elseif stevec == 1
       %Givensova rotacija
       i = indeks;
       r = sqrt(A(j, j)^2 + A(i, j)^2);
       c = A(j, j) / r;
       s = A(i, j) / r;
       A([j, i], j : n) = [c, s; -s, c] * A([j, i], j : n);
       Q(:, [j, i]) = Q(:, [j, i]) * [c, s; -s, c]';
    else %Householderjevo zrcaljenje
        w = A(j:end,j);
        w(1) = w(1) + signatura(w(1)) * norm(w);
        P = eye(m - j + 1) - (2/(w'*w))*(w*w');
        %disp(P)
        A(j:m,j:n) = P * A(j:m,j:n);
        Q(:,j:m) = Q(:,j:m)*P;   
    end
end
R = A;
end