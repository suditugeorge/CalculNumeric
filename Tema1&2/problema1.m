function [ raspuns ] = problema1(a,b,epi)
%metoda bisectiei
c= (a+b)/2;
raspuns = [];
while (abs(b-a) > epi)
    if( f(a)*f(c)<0)
        b=c;
    else
        a=c;
    end
    c=(a+b)/2;
    raspuns = [raspuns c];
end
end

function [functie] = f(x)
functie = 8*(x^3)+4*x-1;
end

