function p = erlangBplots(C)
A = 0.1:0.1:100;
k = 0:C;
num = (A.^C)/factorial(C);
sums = zeros(1,length(k));
dems = zeros(1,length(A));
for a=1:length(A)
 for b=1:length(k)
 sums(b) = (A(a)^k(b))/factorial(k(b));
 end
 dems(a) = sum(sums);
end
p = num./dems;
loglog(A,p), xlabel('Erlangs'),ylim([0.001 0.1]), 
xlim([0.1,100]),
ylabel('Blocking probability')
title('Erlang B plots')
hold on
end

