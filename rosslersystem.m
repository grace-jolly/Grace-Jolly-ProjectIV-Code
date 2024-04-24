function dpdt = rosslersystem(t,p)

%parameters
a = 0.2;
b = 0.2;
d = 6.3;

dpdt = [-p(2)-p(3);
    p(1)+a.*p(2);
    b+p(3).*(p(1)-d)];
end