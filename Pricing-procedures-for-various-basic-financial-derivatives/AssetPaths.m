function Spaths=AssetPaths(S0,mu,sigma,T,Nsteps,Nrepl)
Spaths=zeros(Nrepl,1+Nsteps);
Spaths(:,1)=S0;
dt=T/Nsteps;
nudt=(mu-0.5*sigma^2)*dt;
sidt=sigma*sqrt(dt);
for i=1:Nrepl
    for j=1:Nsteps
        Spaths(i,j+1)=Spaths(i,j)*exp(nudt+sidt*randn);
    end
end
x=1:1:Nsteps;
for k=1:Nrepl
    hold on
    plot(x,Spaths(k,x))
end
hold off