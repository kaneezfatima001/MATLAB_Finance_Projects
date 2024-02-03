function price=DownOutPut(T,N,sigma,S,r,K,H)
pf=@(x) max(x-K,0);
dt=T/N;
u=exp(dt*sigma);
d=1/u;
R=1+r*dt;
p0=(R-d)/(u-d);
q0=1-p0;
if R>=u||R<=d
    error('');
    price=[];
    return
end
v0=zeros(N+1,1);
v1=zeros(N+1,1);
for i=0:N
    v1(i+1)=pf(S*u^i*d^(N-i));
end
for j=N-1:-1:0
    for i=0:j
        ex=S*u^i*d^(j-i);
        disp(ex)
        if ex>=H
            v0(i+1)=0;
        else
            v0(i+1)=(q0*v1(i+1)+p0*v1(i+2))/R;
        end
    end
    v1=v0;
end
price=v1(1);
end