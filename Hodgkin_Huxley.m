function dpdt = Hodgkin_Huxley(t,p)
%p = [v,m,n,h]

%Input currents
%constant current
I = 170;

%sinusoidal current
A = 16.5; %amplitude
fs = 0.1; %frequency
%I = A.*sin(2.*pi.*fs.*t);

%parameters
%ion conductances
gk = 36;
gna = 120;
gl = 0.3;
%equilibrium potentials
vk = -12;
vna = 115;
vl = 10.599;
%capacitance of membrane
c = 1;

%scaling parameter gamma_n
%gamma_n = 30;

dpdt = [(1./c).*(I - gna.*(p(2).^3).*p(4).*(p(1)-vna) - gk.*(p(3).^4).*(p(1)-vk) - gl.*(p(1)-vl));
    (0.1.*(25-p(1))./(exp((25-p(1))./10)-1)).*(1-p(2)) - (4.*exp(-p(1)./18)).*p(2);
    (1./gamma_n).*((0.01.*(10-p(1))./(exp((10-p(1))./10)-1)).*(1-p(3)) - (0.125.*exp(-p(1)./80)).*p(3));
    (0.07.*exp(-p(1)./20)).*(1-p(4)) - (1./(exp((30-p(1))./10)+1)).*p(4)];
end