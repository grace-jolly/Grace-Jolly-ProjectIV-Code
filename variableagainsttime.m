t0 = 0; %start time
tfinal = 40; %end time

%initial condition
%p0 = [0,0]; %2d system
p0 = [0,0,0]; %3d system
%p0 = [0,0,0,0]; %4d system

%sampling time, tau_s, used in 0-1 test for chaos
tau_s = 0.1;

%solve system of ODEs
odeopts = odeset('reltol',1e-11,'AbsTol',1e-11,'MaxStep',0.1);
[t,p] = ode45(@rosslersystem,[t0 tfinal],p0,odeopts); 
%[t1,p1] = ode45(@rosslersystem,[t0:tau_s:tfinal],p0,odeopts); % solution of system at values of time that are in the sequnce of time steps for the 0-1 test for chaos
close all;

%plot variable against time
%change variable plotted by changing p(:1)
hold on
plot(t,p(:,1), 'LineWidth', 1) 
%plot(t1,p1(:,1),'r*') %plot of points where time is one of the time steps for 0-1 test for chaos
hold off

%label axes
xlabel('$$t$$','Interpreter','latex')
ylabel('$$x$$','Interpreter','latex')

%axes numbering and fontsize
set(gca,'TickLabelInterpreter','latex')
set(gca,'XTick',[], 'YTick', [])
fontsize(30,"points")


