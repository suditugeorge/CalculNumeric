function [X] = problema3b()
A=[10 7 8 7;7 5 6 5;8 6 10 9;7 5 9 10]; 
b = [32.1 22.9 33.1 30.9]';
X = inv(A)*b;
end

