%initial condition
x0 = 0.7;

l = [x0];
p = [0];
q = [0];

%parameters
mu = 3.55;
c = pi/5;

%calculate x_t for the logistic map from t=0 to t=5000
for k = 1:5000
    a = mu.*x0.*(1-x0);
    l(end+1) = a;
    x0 = a;
end

%calculate p(n) and q(n) from n=1 to n=5000
for k = 1:5000
    b = p(k) + l(k).*cos(c.*k);
    p(end+1) = b;
    d = q(k) + l(k).*sin(c.*k);
    q(end+1) = d;
end 

%plot p versus q
plot(p,q,'m-','LineWidth',1)

%axes numbering, label and fontsize
set(gca,'XTick',[], 'YTick', [])
xlabel('$$p$$','Interpreter','latex')
ylabel('$$q$$','Interpreter','latex')
set(gca,'TickLabelInterpreter','latex')
fontsize(22,"points")

