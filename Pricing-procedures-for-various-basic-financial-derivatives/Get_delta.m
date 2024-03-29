syms s x t sigma r  
d1=(log(s/x)+(r+sigma^2/2)*t)/(sigma*sqrt(t));
d2=(log(s/x)+(r-sigma^2/2)*t)/(sigma*sqrt(t));
c=s*normcdf(d1)-x*exp(-r*t)*normcdf(d2);
delta=diff(c,s);   
f1=matlabFunction(delta);
%@(r,s,sigma,t,x)
df1=@(s) f1(0.04,s,0.2,0.6,100);
figure(1);
title('delta');
fplot(df1,[10,150]);