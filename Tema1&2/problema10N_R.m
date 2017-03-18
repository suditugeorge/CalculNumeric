function [ raspuns ] = problema10N_R(epi)
%metoda N-R
x0=0;
x1 = x0 - f(x0)/fDerivat(x0);
raspunsPrimaFunctie = [x1];
while(abs(x1-x0)>epi)
    x0 = x1;
    x1 = x0 - f(x0)/fDerivat(x0);
    raspunsPrimaFunctie = [raspunsPrimaFunctie x1];
end
%aproximarea solutiei
raspuns = raspunsPrimaFunctie;
end

function [functie] = f(x)
functie = 8*(x^3)+4*x-1;
end
function [functieDerivata] = fDerivat(x)
functieDerivata = 24*(x^2)+4;
end

