function ret = chaotic_neuron_map_bif(x,t,r)
% r bifurcation parameter

%parameters
alpha = 1;
epsilon = 0.05;
k = 1;
a = r;


ret= k.*x(t)-alpha./(1+exp(-x(t)./epsilon))+ a;
end