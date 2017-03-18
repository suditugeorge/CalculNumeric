function [ raspuns ] = problema3d()
A=[10 7 8 7;7 5 6 5;8 6 10 9;7 5 9 10];
%numarul de conditionare infinit
raspuns1 = norm(A,inf)* norm(inv(A),inf);
b = [32 23 33 30]';
x = [1 1 1 1]';
%b+$b = (notatie) B
B = [32.1 22.9 33.1 30.9]';
%x+$x = (notatie) X
X = problema3b();
% norma inf $x / norma infinit x
raspuns2 = norm(X-x,inf)/norm(x,inf);
%norma inf $b / norma infinit b
raspuns3 = norm(B-b,inf)/norm(b,inf);
%comparare
raspuns = [raspuns2 raspuns3];
end

