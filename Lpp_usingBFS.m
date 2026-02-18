% Linear Programming Problem Solver
% max z = 2x1 + 5x2
% subject to:
% x1 + 3x2 >= 7  (add surplus: x1 + 3x2 - s1 = 7, where s1 is surplus)
% 2x1 + 5x2 <= 9  (add slack: 2x1 + 5x2 + s2 = 9)

% For >= constraint, we subtract surplus but it causes issues
% Better approach: Rewrite as -x1 - 3x2 <= -7, then add slack

A = [1, 3, -1, 0;      % x1 + 3x2 - s1 = 7
     5, 2,  0, 1];     % 2x1 + 5x2 + s2 = 9
     
B = [7; 9];
C = [2, 5, 0, 0];

n = size(A, 2);
m = size(A, 1);

if n >= m 
    ncm = nchoosek(n, m);
    p = nchoosek(1:n, m);
    sol = [];
    
    for i = 1:ncm
        y = zeros(n, 1);
        A1 = A(:, p(i, :));
        if det(A1) ~= 0
            X = inv(A1) * B;
            if all(X >= 0)
                y(p(i, :)) = X;
                sol = [sol y];
            end 
        end
    end
    
    % Check if any feasible solution found
    if isempty(sol)
        error('No feasible solution found!');
    end
    
    Z = C * sol;
    [optval, idx] = max(Z);
    optsol = sol(:, idx);
    opt = [optsol; optval];
    array2table(opt', 'VariableNames', {'x1', 'x2', 's1', 's2', 'Z'})
else
    error('Number of variables must be >= number of constraints');
end