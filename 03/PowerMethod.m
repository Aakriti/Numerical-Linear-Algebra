function [val Z] = PowerMethod(A)

[n ~] = size(A);

x = ones(n,1);
tic
for i = 1:1000
    Z = A*x;
    s = norm(Z);
    Z = Z/s;
    if norm(Z-x)<1e-6 || norm(Z+x)<1e-6
        break;
    end
    x = Z;
end

val = (Z'*A*Z)/(Z'*Z);
toc
i
