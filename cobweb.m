function cobweb(f,a,b,x0,N,M)
%f function used
%[a,b] domain of functions y=x and y=f(x)
%x0 initial condition
%N number of points between a and b
%M number of cobweb lines drawn
x = linspace(a,b,N);
y = f(x);
d = 1.5; %linewidth of y=x and y=f(x)
d1 = 1; %linewidth of cobweb lines


%plot y=x, y=f(x) and cobweb
hold on;
plot(x,y,"Color",'b','LineWidth',d);
plot(x,x,"Color",'r','LineWidth',d);
x(1) = x0;
line([x(1),x(1)],[-1.5,f(x(1))],'LineWidth', d1,'Color','k');
line([x(1),f(x(1))],[f(x(1)),f(x(1))],'LineWidth', d1,'Color','k');
for i = 1:M
    x(i+1) = f(x(i));
    line([x(i+1),x(i+1)],[x(i+1),f(x(i+1))],'LineWidth', d1,'Color','k');
    line([x(i+1),f(x(i+1))],[f(x(i+1)),f(x(i+1))],'LineWidth', d1,'Color','k');
end

% axes labels, legend and font size
xlabel('$$y$$','Interpreter','latex')
ylabel('$$z$$','Interpreter','latex')
set(gca,'XTick',[], 'YTick', [])
legend('$$z = f(y)$$','$$z = y$$','Interpreter','latex')
set(gca, 'fontsize', 22)
hold off;