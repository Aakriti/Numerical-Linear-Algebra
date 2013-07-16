function Order()

ops = zeros(200);
cube = zeros(200);
for i = 5:205
    ops(i) = Operations(i);
    cube(i) = i*i*i;
end

subplot(1,2,1);
plot(ops,'r');
title('No of Floating point operations Vs N');
xlabel('N');
ylabel('No. of Operations');
hold on;

subplot(1,2,2);
plot(ops,'b');
title('N^3 Vs N');
xlabel('N');
ylabel('N Cubed');
