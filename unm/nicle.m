function X = nicle()
X = [];
moznosti = linspace(0,1, 10000);
f = @(x)exp(x)* sin(11*exp(x));
for i = 1:length(moznosti)-1
   if sign(moznosti(i))==sign(moznosti(i+1)) 
   return
   else
       x = ridder(f, moznosti(i), moznosti(i+1));
       X = [X x];
   end
end