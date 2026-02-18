clc; clear;

%%Approach
%Define A, B
%Express x2 in terms of x1
%Plot
%Find intercepts
%%No feasibility checking. No optimal.

A = [2 1; 1 -1; 0 1];
B = [5; 1; 2];

x1 = 0:0.01:max(B);

x21 = (B(1)-A(1,1)*x1)/A(1,2);
x22 = (B(2)-A(2,1)*x1)/A(2,2);
x23 = (B(3)-A(3,1)*x1)/A(3,2);

x21(x21<0)=NaN;
x22(x22<0)=NaN;
x23(x23<0)=NaN;

plot(x1,x21,x1,x22,x1,x23)
grid on
