function ret = chaotic_neuron_map_cobweb(x)

%parameters
alpha = 1;
epsilon = 0.02;
k = 0.6;
a = 0.32;

ret= k.*x-alpha./(1+exp(-x./epsilon))+ a;
end