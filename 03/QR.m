function [Q R] = QR(A)

[m n] = size(A);

if m ~= n
    return;
end

I = eye(n);
A = [A I];

for j = 1:n
    for i= j+1 : n
        d = A(i,j)*A(i,j) + A(j,j)*A(j,j);
        d = sqrt(d);
        c = A(j,j) / d;
        s = A(i,j) / d;
        for k = j:2*n
            t = A(j,k);
            A(j,k) = c*t + s*A(i,k);
            A(i,k) = -1*s*t + c*A(i,k);
        end
    end
end
R = A(:,1:n);
Q = A(:,n+1:2*n);
Q = Q';