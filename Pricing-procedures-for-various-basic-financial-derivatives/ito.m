function [mu,sigma]=ito(data)
n=numel(data);
z=zeros(n,1);
for i=1:n
    z(i)=log(data(i))/log(data(1));
end
sigma=std(z);
mu=mean(z)+(sigma^2)/2;