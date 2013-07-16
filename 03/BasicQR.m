function D = BasicQR(A)
tic
for i = 1:1000
    [Q R] = QR(A);
    A1 = R*Q;
    if norm(A(1,1)-A1(1,1))<1e-6 || norm(A(1,1)+A1(1,1))<1e-6
        break;
    end
    A = A1;
end

D = diag(A1);
toc
i