function [raspuns] = problema9(epi)

a = 0.5;
b = 1.5;
x0 = (b.*f1(a)-a.*f1(b))/(f1(a)-f1(b));
raspuns = [x0];
%Trebuie calculat x1 ca sa pot calcula conditia de oprire
if(f1(x0) == 0)
    a = a;
    b = b;
    x1 = x0;
end    
if(f1(a).*f1(x0)<0)
    a = a;
    b = x0;
    x1 = (b.*f1(a)-a.*f1(b))/(f1(a)-f1(b));
elseif(f1(a).*f1(x0)>0)
    a = x0;
    b = b;
    x1 = (b.*f1(a)-a.*f1(b))/(f1(a)-f1(b));
end
raspuns = [raspuns x1];
nr1=1;
while(abs(raspuns(end)-raspuns(end-1))>epi)
    x0 = raspuns(end-1);
    x1 = raspuns(end);
    if(f1(x1) == 0)
        a = a;
        b = b;
        x2 = x1;
    end    
    if(f1(a).*f1(x1)<0)
        a = a;
        b = x1;
        x2 = (b.*f1(a)-a.*f1(b))/(f1(a)-f1(b));
    elseif(f1(a).*f1(x1)>0)
        a = x1;
        b = b;
        x2 = (b.*f1(a)-a.*f1(b))/(f1(a)-f1(b));
    end
    raspuns = [raspuns x2];
    nr1 = nr1 +1;
end


end

function [functie3] = f3(x)
functie3 = exp(x)-2;
end

function [functie2] = f2(x)
functie2 = cos(exp(x)-2);
end

function [functie1] = f1(x)
functie1 = f3(x)-f2(x);
end
