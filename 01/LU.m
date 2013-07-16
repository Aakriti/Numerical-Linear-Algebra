function x = LU(A,b,n)

A1 = A;
count1 = 0;
L=eye(n);
U=eye(n);

tic
for i = 1:n-1
    for k = i+1 : n
        T = -A1(k,i)/A1(i,i);
        count1 = count1 + 1;
        for j = i+1:n
            A1(k,j) = T*A1(i,j) + A1(k,j);
            count1 = count1+1;
        end
        A1(k,i)= - T;
    end
end

t1 = toc
for i = 1:n
    for j = 1:n
        if i>j
            L(i,j) = A1(i,j);
        else
            U(i,j) = A1(i,j);
        end
    end
end


w = zeros(n,1);
w(1) = b(1);

for i = 2:n
    w(i) = b(i);
    for j = 1:i-1
       w(i) = w(i) - L(i,j) * w(j);
    end
end
x = zeros(n,1);
x(n) = w(n)/U(n,n);
for i = n-1:-1:1
    x(i) = w(i);
    for j = i+1:n
        x(i) = x(i) - U(i,j)*x(j);
    end
    x(i) = x(i)/U(i,i);
end

count1