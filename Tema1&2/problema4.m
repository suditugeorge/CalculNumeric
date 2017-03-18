function [ raspuns ] = problema4(epi)
%metoda bisectiei
a=1;
b=2;
c= (a+b)/2;
raspuns = [];
while (abs(f(c)) > epi)
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
functie = x*x-3;
end

