function [ p ] = alegeP(A,k,n,s)
elemente = [];
p = -1;
for j=k:n
  elemente(end+1) = abs(A(j,k))/s(j);
end
maximum = max(elemente);

for i=k:n
    if( abs(A(i,k))/s(i) == maximum)
        p = i;
        break;
    end
end
end

