%Given:
%x = (7,2,5,8,9)
%y = 2x + 1 + x²
% Approach
%Evaluate function.

clc; clear;

x = [7 2 5 8 9];
y = 2*x + 1 + x.^2;

disp('y values:')
disp(y)

plot(x,y,'o-')
grid on
