function x = Gaussian(A,b,n)

Z = [A b];
count = 0;
tic
for i = 1:n-1
    for k = i+1 : n
        T = -Z(k,i)/Z(i,i);
        count = count + 1;
        for j = i:n+1
            Z(k,j) = T*Z(i,j) + Z(k,j);
            count = count + 1;
        end
    end
end
t = toc
x = zeros(n,1);
c = Z(:,n+1);
Z = Z(:,1:n);
x(n) = c(n)/Z(n,n);

for i = n-1:-1:1
    x(i) = c(i);
    for j = i+1:n
        x(i) = x(i) - Z(i,j)*x(j);
    end
    x(i) = x(i)/Z(i,i);
end

count