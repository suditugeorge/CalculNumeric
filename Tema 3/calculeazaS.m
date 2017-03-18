function [ s ] = calculeazaS(A,k,n)

elemente = [];
for i=k:1:n
    elemente(end+1) = abs(A(k,i));
end
s = max(elemente);
end