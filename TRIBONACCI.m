clc; clear;

n = 10;
T = zeros(1,n);

T(1)=0;
T(2)=1;
T(3)=1;

for i = 4:n
    T(i) = T(i-1) + T(i-2) + T(i-3);
end

disp('Tribonacci Series:')
disp(T)

stem(1:n, T)
grid on
