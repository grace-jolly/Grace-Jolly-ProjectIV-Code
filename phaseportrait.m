t0 = 0; %start time
tfinal = 40; %end time

%initial condition
%p0 = [0,0]; %2d system
p0 = [0,0,0]; %3d system
%p0 = [0,0,0,0]; %4d system

%solve system of ODEs
odeopts = odeset('reltol',1e-11,'AbsTol',1e-11,'MaxStep',0.1);
[t,p] = ode45(@lorenz,[t0 tfinal],p0,odeopts); 
close all;

%plot phase portrait
%plot(p(:,1),p(:,2), 'LineWidth', 1) %2d plot 
plot3(p(:,1),p(:,2),p(:,3), 'LineWidth', 1) %3d plot

%label axes
xlabel('$$x$$','Interpreter','latex')
ylabel('$$y$$','Interpreter','latex')
zlabel('$$z$$','Interpreter','latex')

%axes numbering and fontsize
set(gca,'TickLabelInterpreter','latex')
set(gca,'XTick',[], 'YTick', [], 'ZTick', [])
fontsize(30,"points")

