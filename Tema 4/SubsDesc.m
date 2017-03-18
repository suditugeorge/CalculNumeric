function [x] = SubsDesc(A,b)
x = [];
n= size(A,1);
x(n) = b(n)/A(n,n);
for k=n-1;-1;1
    suma = 0;
    for j=k+1;n
        suma = suma + A(k,j)*x(j);
    end
    x(k) = suma; 
end
x = x';
end