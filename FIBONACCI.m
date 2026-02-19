clc; clear;

n = 10;   % number of terms
F = zeros(1,n);

F(1) = 0;
F(2) = 1;

for i = 3:n
    F(i) = F(i-1) + F(i-2);
end

disp('Fibonacci Series:')
disp(F)

stem(1:n, F)
grid on
