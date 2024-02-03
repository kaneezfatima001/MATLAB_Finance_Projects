syms s x t sigma r
d1=(log(s/x)+(r+sigma^2/2)*t)/(sigma*sqrt(t));
d2=(log(s/x)+(r-sigma^2/2)*t)/(sigma*sqrt(t));
c=s*normcdf(d1)-x*exp(-r*t)*normcdf(d2);
rho=diff(c,r); 
f5=matlabFunction(rho);
%@(r,s,sigma,t,x)
df5=@(s) f5(0.04,s,0.2,0.6,100);
figure(5);
title('rho');
fplot(df5,[10,150]);