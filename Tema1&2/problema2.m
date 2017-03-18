function [] = problema2()
%metoda bisectiei
a=0;
b=1;
c1= (a+b)/2;

for i=1:100
    if( f2(a)*f2(c1)<0)
        b=c1;
    else
        a=c1;
    end
    c1=(a+b)/2;
end
a=1;
b=3.2;
c2= (a+b)/2;

for i=1:100
    if( f2(a)*f2(c2)<0)
        b=c2;
    else
        a=c2;
    end
    c2=(a+b)/2;
end
a=3.2;
b=4;
c3= (a+b)/2;

for i=1:100
    if( f2(a)*f2(c3)<0)
        b=c3;
    else
        a=c3;
    end
    c3=(a+b)/2;
end
plot([0:0.1:4],f2([0:0.1:4]))
hold on
plot([c1 c2 c3],f2([c1 c2 c3]),'r*')
hold off
end

function [functie2] = f2(x)
functie2 = x.*x.*x-7.*x.*x+14.*x-6;
end

