function [raspuns1] = problema8(epi)
x0 = 0.5;
x1 = 1.5;
nr1 = 0;
raspuns1= [];
while(abs(x1-x0)>epi)
    x2 = (x1.*f3(x0)-x0.*f3(x1))/(f3(x0) - f3(x1));
    x0 = x1;
    x1 = x2;
    raspuns1 = [raspuns1 x2];
    nr1 = nr1 + 1;
end

end

function [functie1] = f1(x)
functie1 = exp(x)-2;
end

function [functie2] = f2(x)
functie2 = cos(exp(x)-2);
end
function [functie3] = f3(x)
functie3 = f1(x)-f2(x);
end

