clear, clc, close all

% initialization
N = 1e7;

% generate a set of random voltages u(10.8, 13.2) i.e., 12 V +/- 10%
u = 10.8 + 2.4*rand(1, N);

% generate a set of random resistances r(900, 1100) i.e., 1000 Ohm  +/- 10%
r = 900 + 200*rand(1, N);

% calculate the resistor's power dissipation
p = u.^2./r;

% estimate the worst-case value of the resistor's power dissipation
% Note: the real value is 0.1936 W
Pmaxest = max(p);
err = (Pmaxest - 0.1936 )/0.1936*100;
disp(['The estimated value is ' num2str(Pmaxest)])
disp(['The error of the estimation is ' num2str(err) ' %'])
commandwindow