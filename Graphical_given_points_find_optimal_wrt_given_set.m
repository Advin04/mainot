%Remove infeasible

%Calculate Z

%Find max/min

clc; clear;

A = [2 1; 1 -1; 0 1];
B = [5; 1; 2];
C = [2 3];

cor_pts = [1 3; 0 9; 1 1];

for i=1:size(cor_pts,1)
    const1(i)=A(1,1)*cor_pts(i,1)+A(1,2)*cor_pts(i,2)-B(1);
    const2(i)=A(2,1)*cor_pts(i,1)+A(2,2)*cor_pts(i,2)-B(2);
    const3(i)=A(3,1)*cor_pts(i,1)+A(3,2)*cor_pts(i,2)-B(3);
end

s = unique([find(const1>0) find(const2>0) find(const3>0)]);
cor_pts(s,:) = [];

Z = cor_pts * C';
[opt_val,index]=max(Z);

fprintf('Optimal Value = %f\n',opt_val)
disp('Optimal Point:')
disp(cor_pts(index,:))
