
function bifurcation_diagram(x1, a, b)
%x1 initial condition
%a miniumum value of bifurcation parameter
%b maximum value of bifurcation parameter

Npre = 5000; %number of points calculated
Nplot = 1000; %last Nplot points plotted
x = zeros(Nplot,1);
for r = linspace(a,b,Npre)
  x(1) = x1;
  for n = 1:Npre
    x(1) = chaotic_neuron_map_bif(x,1,r);
  end
  for n = 1:Nplot-1
    x(n+1) = chaotic_neuron_map_bif(x,n,r);
  end
  plot(r*ones(Nplot,1), x, '.', 'markersize', 2, 'Color','b');
  hold on;
end

%axes labels and sizes, fontsize 
fontsize(22,"points")
xlabel('$$a$$','Interpreter','latex');  
ylabel('$$y_t$$','Interpreter','latex');
set(gca, 'xlim', [a b]);
set(gca,'TickLabelInterpreter','latex')

hold off;