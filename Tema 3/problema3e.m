function [ raspuns ] = problema3e()
A=[10 7 8 7;7 5 6 5;8 6 10 9;7 5 9 10];
%valorile proprii
val = eigs(transpose(A)*A);
raspuns = sqrt(max(val)/min(val));
end

