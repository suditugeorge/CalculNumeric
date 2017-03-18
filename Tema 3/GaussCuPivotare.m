function [ raspuns ] = GaussCuPivotare(A,b)
b = b';
A = [A b];
n = size(A,1);
for k=1;n-1
    p = calculeazaP(A,k,n);
    if(p ~= -1)
        A(p,:) = A(k,:);
    end
    for l=k+1:n
        m = A(l,k)/A(k,k);
        if(isfinite(m) && not(isnan(m)))
            A(l,:) = A(l,:) - (m.*A(k,:));
        end
    end
end

if(A(size(A,1),size(A,1)) == 0)
    disp('Sistem incompatibil');
else
    b = A(:,end);
    A(:,end) = [];
    raspuns = SubsDesc(A,b);
end
end
