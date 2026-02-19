A = [1, 2, 1, 1; 2, 1, 3, 2];    % Coefficient matrix (m x n)
B = [10; 15];        % RHS vector (m x 1)
C = [2, 3, 4, 5];    % Objective function coefficients (1 x n)

n=size(A,2)
m=size(A,1)

if n>=m 
    ncm=nchoosek(n,m)
    p=nchoosek(1:n,m)
    sol=[]
    for i = 1:ncm
       y=zeroes(n,1)
        A1 = A(:,p(i,:);
        if det(A1~=0)
            X=inv(A1)*B
            if all(X>=0)
                y(p(i,:))=X
                sol=[sol y]
            end 
        end
    end
end
else
    error
    end
Z=C*sol
[optval idx] = max(Z)
optsol=sol(:,idx)
opt = [optsol optval]
array2table(opt,'VariableNames',{'x1','x2','x3','x4','Z'})
