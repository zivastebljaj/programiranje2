function [Q, R] = qr_razcep(A)

[m, n] = size(A);
Q = eye(m, m);
% A postane R

for j = 1 : n
    
    stevec = 0;
    index = 0;
    for i = j + 1 : m
        if abs(A(i, j)) > 1e-15 * abs(A(j, j))
            index = i;
            stevec = stevec + 1;
        end
    end
    
    if stevec == 0
        continue
    elseif stevec == 1 %Givens
        
        i = index;
                
        r = sqrt(A(j, j)^2 + A(i, j)^2);
        c = A(j, j) / r;
        s = A(i, j) / r;
                
        A([j, i], j : n) = [c, s; -s, c] * A([j, i], j : n);
        Q(:, [j, i]) = Q(:, [j, i]) * [c, s; -s, c]';
        % Qj = eye(n)
        % Qj(:, [j, i]) = Q(:, [j, i]) * [c, s; -s, c];
    else % Householder
        
        if m == n && j == n
            continue;
        end

        x = A(j:m, j);
        
        w = x;
        if x(1) >= 0
            w(1) = w(1) + norm(x);
        else
            w(1) = w(1) - norm(x);
        end
            
        P = eye(m - j + 1) - 2 / (w' * w) .* (w * w');
               
        A(j : m, j : n) = P * A(j : m, j : n);
        Q(:, j : m) = Q(:, j : m) * P;
    end    
end

R = A;

end