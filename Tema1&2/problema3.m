function [raspuns] = problema3()
%metoda bisectiei

plot([0:0.1:5],f3([0:0.1:5]),[0:0.1:5],f4([0:0.1:5]))
hold on
plot([1],f3([1]),'r*')
hold off
%metoda bisectiei
a = 0.5;
b = 1.5;
c = (a+b)/2;
epi = 0.00001;
raspuns = [];
while(abs(b-a)>epi)
   if(f1(a).*f1(c) == 0)
       a = a;
       b = b;
       c = c;
   end
   if (f1(a).*f1(c)<0)
       a = a;
       b = c;
       c = (a+b)/2;
   elseif(f1(a).*f1(c)>0)
       a =c;
       b = b;
       c = (a+b)/2;
   end;
   raspuns = [raspuns c];
end
end

function [functie1] = f1(x)
functie1 = cos(exp(x)-2)-exp(x)+2;
end
function [functie3] = f3(x)
functie3 = exp(x)-2;
end
function [functie4] = f4(x)
functie4 = cos(exp(x)-2);
end

