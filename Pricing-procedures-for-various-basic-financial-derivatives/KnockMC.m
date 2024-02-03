function price=KnockMC(s0,r,T,sigma,pf,N,M,H)
dt=T/N;
s=zeros(M,N+1);
s(:,1)=s0;
if s0>H   
    error('Not Valid');
    return;
end
for i=1:N
    s(:,i+1)=s(:,i).*exp((r-sigma^2/2)*dt+sigma.*sqrt(dt).*randn(M,1));
    for j=1:M
        if s(j,i+1)>H
            s(j,i+1)=0;
        end
    end
end
price=exp(-r*T)*mean(pf(mean(s,2)));      
end