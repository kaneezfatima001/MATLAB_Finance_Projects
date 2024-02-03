clear all
n1=10000;
n2=100000;
n3=1000000;
n4=10000000;
m1=mean(10+2*rand(n1,1));
m2=mean(10+2*rand(n2,1));
m3=mean(10+2*rand(n3,1));
nums4=10+2*rand(n4,1);
m4=mean(nums4);
err=abs([m1 m2 m3 m4]-11);
loglog([n1 n2 n3 n4],err,'o')
xlabel('number of samples')
ylabel('error')
figure
hist(nums4,50)
disp('press any key to continue')
pause

m4=mean(2*nums4);
fprintf('Mean of 2*x is %f\n', m4)
m4=mean(nums4.^2);
fprintf('Mean of x^2 is %f\n', m4)
m4=mean(1./nums4);
fprintf('Mean of 1/x is %f\n', m4)
disp('press any key to continue')
pause

nums4=randn(n4,1);
m4=mean(nums4);
fprintf('Mean of x (normal dist) is %f\n', m4)
disp('press any key to continue')
pause

clear all
n=100000;
f=600+200*rand(n,1);
r=0.02+0.002*rand(n,1);
emod=(185+15*rand(n,1))*1e9;
l=1+0.05*rand(n,1);
inert=pi*r.^4/4;
delta=f.*l.^3/3./emod./inert;
mm=mean(delta);
fprintf('Mean of beam deflections is %f m\n',mm)
hist(delta,60)
xlabel('deflection (m)')
ylabel('frequency of occurrence')
disp('press any key to continue')
pause

clear all
numpeople=23;
samples=10000;
birthd=ceil(365*rand(numpeople,samples));
count=0;
for j=1:samples
    if numel(birthd(:,j))-numel(unique(birthd(:,j))) >0
        count=count+1;
    end
end
probab=count/samples;
fprintf('The probability of two identical bdays in a room of %i people is %f\n', numpeople, probab)