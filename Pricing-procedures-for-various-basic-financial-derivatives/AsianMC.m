function p=AsianMC(S0,r,T,sigma,pf,N,M,isA)
dt=T/N;
s=zeros(M,N+1);
s(:,1)=S0;
for i=1:N
    s(:,i+1)=s(:,i).*exp((r-sigma^2/2)*dt+sigma.*sqrt(dt).*randn(M,1));
end
SB=zeros(M,1);
if isA
    SB=mean(s,2);
    % disp(SB)
    size(SB)
else
    SB=exp(mean(log(s),2));
end
p=exp(-r*T)*mean(pf(SB));
end