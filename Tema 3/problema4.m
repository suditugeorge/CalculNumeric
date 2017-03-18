function [raspuns] = problema4()
%metoda Gauss fara pivotare

A = [0 1 -2;1 -1 1;1 0 -1];
copie = A;
b = [4 6 2]';
%calculam matricea extinsa
A = [A b];

for k=1:(size(A,1)-1)
    p = min(k:(size(A,1)));
    if(A(p,k) ~= 0)
        aux = A(p,:);
        A(p,:)=A(k,:);
        A(k,:)= aux;
        %disp([k p]);
    end
    for l=(k+1):size(A,1)
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


