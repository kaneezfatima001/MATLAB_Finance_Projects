function price=crr(T,N,sigma,S,r,K)
V2=zeros(N,1);
pf=@(x) max(x-K,0);
for m=1:N
    t=T/m;
    u=exp(sigma*t);
    d=1/u;
    R=1+r/m;
    p=(R-d)/(u-d);
    V0=zeros(m+1,1);
    V1=zeros(m+1,1);
    if R>=u||R<=d
        error('');
        price=[ ];
        return
    end
    
    for i=0:m
        V0(i+1)=pf(S*u^i*d^(m-i));
    end
    for j=m-1:-1:0
        for i=0:j
            V1(i+1)=(p*V0(i+2)+(1-p)*V0(i+1))/R;
        end
        V0=V1;
    end
    V2(m)=V1(1);
end
price=V2(N);
x=1:1:N;
plot(x,V2(x))