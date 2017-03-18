function [raspuns] = problema10Sec(epi)
%metoda Secantei
x0 = 0;
x1 = 1;
raspuns= [];
while(abs(x1-x0)>epi)
    x2 = (x1.*f1(x0)-x0.*f1(x1))/(f1(x0) - f1(x1));
    x0 = x1;
    x1 = x2;
    raspuns = [raspuns x2];
end

end

function [functie] = f1(x)
functie = 8*(x^3)+4*x-1;
end

