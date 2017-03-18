function [ p ] = calculeazaP(A,k,n)

elemente = [];
p = -1;
for i=k:n
    elemente = [elemente abs(A(i,k))];
end
maximum = max(elemente);
for i=k:n
    if(abs(A(i,k)) == maximum)
        p = i;
        break;
    end;
end
end
