function x = QR(A,b)

[Q R] = qr(A);
c = Q' * b;
x = R\c;