function polinom = interpolacija(X, fX)

%X seznam interpolacijskih toèk
%fX seznam vrednosti funkcije v interpolacijskih toèkah

n = length(X) - 1;
F = [ fX' NaN(n +1, n)];
for j = 2: n +1
    for i = 1: n - j +2
        F (i , j ) = ( F ( i +1 ,j -1) -F (i ,j -1) ) /( X ( i +j -1) -X ( i ) ) ;
    end
end
%prva vrstica F so koeficienti interpolacijskega polinoma v Newtonovi
%obliki


end
