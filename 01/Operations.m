function count = Operations(n)

A = randn(n);
b = randn(n,1);
for i=1:n
    A(i,i) = A(i,i) + 100;
end

Z = [A b];
count = 0;

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