function L = cholesky(A)
ops = 0;
n = length(A);
L = zeros(n,n);

for i=1:n
    L(i, i) = sqrt( A(i, i) - L(i, :)*L(i, :)' ); %Here n multiplications happen
    
    ops = ops + n;
    
    for j=(i + 1):n
        L(j, i) = ( A(j, i) - L(i, :)*L(j, :)' )/L(i, i); %Here 1 division and n multiplications happen
        ops = ops + n + 1;
    end
end
