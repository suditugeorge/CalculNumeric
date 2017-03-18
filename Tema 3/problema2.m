function [ raspuns ] = problema2()
A = [1 -3 3;3 -5 3;6 -6 4];
A = transpose(A)*A;
valorileProprii = eigs(A);
%norma 2 a lui A
Anorma = max(sqrt(valorileProprii));
%norma 2 a lui A^-1
A = [1 -3 3;3 -5 3;6 -6 4];
Bnorma = min(sqrt(eigs(transpose(inv(A))*inv(A))));
raspuns = Anorma/Bnorma;
%raspuns = norm(inv(A),2)*norm(A,2);
end

