function price=LookbackMC(s0,r,T,sigma,pf,N,M)
dt=T/N;
s=zeros(M,N+1);
s(:,1)=s0;
    for i=1:N
        s(:,i+1)=s(:,i).*exp((r-sigma^2/2)*dt+sigma.*sqrt(dt).*randn(M,1));
    end
  price=exp(-r*T)*mean(pf(max(s,[],2)));
 end