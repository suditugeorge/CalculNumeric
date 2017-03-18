function [raspunsPrimaFunctie] = problema7(epi)
%metoda N-R
x0=0.5;
x1 = x0 - f3(x0)/f3Derivat(x0);
nr1 = 0;
raspunsPrimaFunctie = [x1];
while(abs(x1-x0)>epi)
    x0 = x1;
    x1 = x0 - f3(x0)/f3Derivat(x0);
    raspunsPrimaFunctie = [raspunsPrimaFunctie x1];
    nr1 = nr1 + 1;
end
end

function [functie1] = f1(x)
functie1 = exp(x)-2;
end
function [functie1Derivata] = f1Derivat(x)
functie1Derivata = exp(x);
end
function [functie2] = f2(x)
functie2 = cos(exp(x)-2);
end

function [functie2Derivata] = f2Derivat(x)
functie2Derivata = -1.*sin(exp(x)-2)*exp(x);
end

function [functie3] = f3(x)
functie3 = f1(x)-f2(x);
end

function [functie3Derivata] = f3Derivat(x)
functie3Derivata = f1Derivat(x)-f2Derivat(x);
end
