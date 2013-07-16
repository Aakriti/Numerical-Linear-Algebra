function [q d] = EigSVD(A)

[n ~] = size(A);

[q1 d1] = eig(A);
[u s v] = svd(A);

for i = 1:n
    q(:,i) = q1(:,n+1-i);
    d(n+1-i,n+1-i) = d1(i,i);
end

x1 = diag(s);
x2 = diag(d);

for i=1:30
    e(i) = abs( x1(i) - x2(i) )/abs(x1(i)) ;
    nrm(i) = norm((u(:,i))-(q(:,i)));

end

plot(nrm);
title('Graph comparing values of corresponding columns of matrices u and q');
xlabel('ith column of the matrix (i belongs to [1,30])');
ylabel('Norm values of corresponding vector difference');


%plot(e)
%title('Graph showing relative error between Eigen values and singular values');
%xlabel('ith row of the matrix (i belongs to [1,30])');
%ylabel('Relative Error');
