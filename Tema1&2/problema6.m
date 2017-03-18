function [raspuns] = problema6()
%metoda n-r

x=2;
raspuns = [0];

for i=1:10
    x = x - f(x)/fDerivat(x);
    raspuns = [raspuns x];
end

end

function [functie1] = f(x)
functie1 = x.*x.*x-7.*x.*x+14.*x-6;
end

function [functieDerivata] = fDerivat(x)
functieDerivata = 3.*x.*x-14.*x+14;
end

