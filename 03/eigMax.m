function [val Z] = eigMax(A)

[n ~] = size(A);
[Z val] = eig(A);

val = val(n,n);
Z = Z(:,n);

[v1 Z1] = PowerMethod(A);


%subplot(1,2,1);
%plot(Z,'r');
%title('Eigen Value from eig function');
%hold on;
%subplot(1,2,2);
%plot(Z1,'b');
%title('Eigen Value from Power Method');

%norm(Z-Z1,2)