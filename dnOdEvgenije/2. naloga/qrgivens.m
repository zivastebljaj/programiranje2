function [Q,R]=qrgivens(A)

% QRGIVENS(A) naredi QR razcep matrike A
% preko Givensovih rotacij. 
% Predpostavljeno je, da je matrika A m x n, kjer je m>=n.

[m,n]=size(A);
Q=eye(m);

for i=1:n
  for j=i+1:m
    [c,s]=givens(A(i,i),A(j,i));
    A([i j],:)=rowrot(A([i j],:),c,s);  
    Q([i j],:)=rowrot(Q([i j],:),c,s);  
  end
end 

Q=Q';
R=A;
