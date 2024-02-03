p1=zeros(1001,1);
for i=100:1:1100
    p1(i)=AsianMC(S0,r,T,sigma,pf,N,M,isA);
end
plot(p1(100:1100));
xlabel('M');
ylabel('p');
title('Moving Average');