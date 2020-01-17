function [Q,R]=cgs(A)

%classic gram-schmidt

[m,n]=size(A);

for i=1:n
   Q(:,i)=A(:,i);
   for j=1:i-1
      R(j,i)=Q(:,j)'*A(:,i);
      Q(:,i)=Q(:,i)-R(j,i)*Q(:,j);
   end
   R(i,i)=norm(Q(:,i));
   Q(:,i)=Q(:,i)/R(i,i);
end
