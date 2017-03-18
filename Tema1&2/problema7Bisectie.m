function [raspunsPrimaFucntie] = problema7Bisectie(epi)
%metoda Bisectiei
a=0.5;
b=1.5;
c=(a+b)/2;
nr1 = 0;
raspunsPrimaFucntie = [c];
while (abs(b-a) > epi)
    if( f3(a)*f3(c)<0)
        b=c;
    else
        a=c;
    end
    c=(a+b)/2;
    raspunsPrimaFucntie = [raspunsPrimaFucntie c];
    nr1 = nr1 +1;
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

