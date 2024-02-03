function price=AMDownPDE(T,S0,K,sigma,r,N,M)
dt=T/N;
ds=(K+S0)/M;
tf=@(i) i*dt;
sf=@(j) S0+j*ds;
price=zeros(N+1,M+1);
p2=zeros(N+1,M+1);
ex=zeros(1,M+1);
for j=0:M
    pf=@(x) max(K-x,0);
    price(end,j+1)=pf(sf(j));
end
uf=@
df=@
%
for i=0:N-1
    price(i+1,end)=uf(tf(i),sf(M));
    price(i+1,1)=df(tf(i),sf(0));
end
for i=N-1:-1:0
    for j=1:M-1
        price(i+1,j+1)=price(i+2,j+1)/(r*dt+1)+dt/(r*dt+1)*(r*sf(j)*(price(i+2,j+2)-...
            price(i+2,j))/(2*ds)+0.5*sigma^2*sf(j)^2*((price(i+2,j+2)+price(i+2,j)...
            -2*price(i+2,j+1))/ds^2));
        ex(j+1)=pf(sf(j+1));
    end
end
for i=N-1:-1:0
    for j=1:M-1
        if price(i+1,j+1)<=ex(j+1)
            price(i+1,j+1)=ex(j+1);
            p2(i+1,j+1)=ex(j+1);
        end
    end
end