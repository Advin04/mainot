clc; clear;

%%Given points:
%%(1,3), (0,9)
%%� Approach
%%Plug into constraints.
%%Check LHS ≤ RHS.

A = [2 1; 1 -1; 0 1];
B = [5; 1; 2];

cor_pts = [1 3; 0 9];

for i=1:size(cor_pts,1)
    const1(i)=A(1,1)*cor_pts(i,1)+A(1,2)*cor_pts(i,2)-B(1);
    const2(i)=A(2,1)*cor_pts(i,1)+A(2,2)*cor_pts(i,2)-B(2);
    const3(i)=A(3,1)*cor_pts(i,1)+A(3,2)*cor_pts(i,2)-B(3);
end

s = unique([find(const1>0) find(const2>0) find(const3>0)]);
cor_pts(s,:) = [];

disp('Feasible Points:')
disp(cor_pts)
