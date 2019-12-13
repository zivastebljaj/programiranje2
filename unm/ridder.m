function x = ridder (fun, a, b)
f_a = fun(a);
f_b = fun(b);
k = 0;
if sign(f_a)==sign(f_b) 
   disp('Nepravilen interval')
   return
end
tol = 1e-10;
while ((abs(b-a))> tol)
    k = k+1;
    c = a + (b-a)/2;
    f_c = fun(c);
    s = sqrt(f_c*f_c - f_a*f_b);
    x = c + (c-a)*(sign(f_a - f_b)*f_c)/s;
    f_x = fun(x);
    if sign(f_x) ~= sign (f_c)
        a = x;
        b = c;
     else
         if sign(f_x) ~= sign(f_a)
             b = x;
         end
         if sign(f_x) == sign(f_a)
             a = x;
         end
    end
end
x = c;