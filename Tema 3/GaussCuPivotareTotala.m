function [ raspuns ] = GaussCuPivotareTotala(A,b)
b = b';
A = [A b];
n = size(A,1);

for k=1:n-1
    s = [];
    for i=k:n
        s(i) = calculeazaS(A,k,n);
    end

    p = alegeP(A,k,n,s);
    if(p ~= -1)
        tmp = A(k,:);
        A(k,:) = A(p,:);
        A(p,:) = tmp;
        for i=k+1:n
            A(i,k) = 0;
        end
    end
end
b = A(:,end);
A(:,end) = [];
raspuns = SubsDesc(A,b);
end

