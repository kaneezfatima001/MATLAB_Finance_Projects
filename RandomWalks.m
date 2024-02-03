clear all
steplen=1;
startx=0;
starty=0;
nsteps=1000;
angle=2*pi*rand(nsteps,1);
dx=steplen*cos(angle);
dy=steplen*sin(angle);
x(1)=startx;
y(1)=starty;
for i=2:nsteps
    x(i)=x(i-1)+dx(i-1);
    y(i)=y(i-1)+dy(i-1);
end
plot(x,y,0,0,'ro','LineWidth',2)
xlabel('x')
ylabel('y')
title('Random Walk Path')
distance=sqrt(x.^2+y.^2);
t=1:numel(x);
figure;
loglog(t,distance)
xlabel('time')
ylabel('distance traveled')
title('Distance Traveled vs. Time')
disp('Press any key to continue')
pause

clear all
squaresidelength=2;
area=squaresidelength.^2;
samples=1000
x=squaresidelength*(-0.5+rand(samples,1));
y=squaresidelength*(-0.5+rand(samples,1));
outside=floor(2*sqrt(x.^2+y.^2)/squaresidelength);
circarea=(1-sum(outside)/samples)*area
ins=find((x.^2+y.^2)<=squaresidelength^2/4);
outs=find((x.^2+y.^2)>squaresidelength^2/4);
plot(x(ins),y(ins),'+')
axis equal
hold on
plot(x(outs),y(outs),'r+')
hold off
samples=1000000
x=squaresidelength*(-0.5+rand(samples,1));
y=squaresidelength*(-0.5+rand(samples,1));
outside=floor(2*sqrt(x.^2+y.^2)/squaresidelength);
circarea=(1-sum(outside)/samples)*area
disp('Press any key to continue')
pause

a=2
b=7
randnumbers=a+(b-a)*rand(5,1)
mean(randnumbers)

