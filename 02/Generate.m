function Generate


A = randn(500,1500);
b = randn(500,1);


I = 100*eye(500);
A = I * A;

AT = A';

%Second equation
in1 = inv(AT*A);
x1 = in1 * AT * b;

%Third equation
in2 = inv(A*AT);
x2 = AT * in2 * b;

x3 = QR(A,b);

x1 = A*x1 - b;
x2 = A*x2 - b;
x3 = A*x3 - b;

subplot(1,3,1);
plot(x1);
title('Error from Second Equation');
hold on;
subplot(1,3,2);
plot(x2);
title('Error from Third Equation');
hold on;
subplot(1,3,3);
plot(x3);
title('Error from QR Decomposition');