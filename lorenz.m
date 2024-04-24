function dpdt = lorenz(t,p)

%parameter values
sigma = 10;
r = 28;
b = 8/3;

dpdt = [sigma.*(p(2)-p(1));
    r.*p(1)-p(2)-p(1).*p(3);
    p(1).*p(2)-b.*p(3)];
end