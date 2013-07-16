function New(n)

if n < 2
    exit();
end
A = randn(n);
b = randn(n,1);
for i=1:n
    A(i,i) = A(i,i) + 100;
end
y = A\b;

x = Gaussian(A,b,n);

E = abs(x-y)/abs(y);


x1 = LU(A,b,n);


E1 = abs(x1-y)/abs(y);
subplot(1,2,1);
plot(E,'r');
title('Graph showing relative error in Gaussian Elimination');
xlabel('ith row of the matrix (i belongs to [1,100])');
ylabel('Relative Error');
hold on;
subplot(1,2,2);
plot(E1,'b');
title('Graph showing relative error in LU');
xlabel('nth row of the matrix');
ylabel('Relative Error');