%Example:
%x1 + x2 + x3 = 10
%x1 + 2x2 + x3 = 15
% Step 1: Eliminate x3
%x3 = 10 − x1 − x2
%Substitute in second equation.
%Now 2 variables system.

clc; clear;

% After substitution assume:
% x1 + x2 <= 10
% x1 + 2x2 <= 15

A = [1 1; 1 2];
B = [10;15];

x1 = 0:0.01:15;

x21 = (B(1)-A(1,1)*x1)/A(1,2);
x22 = (B(2)-A(2,1)*x1)/A(2,2);

plot(x1,x21,x1,x22)
grid on
