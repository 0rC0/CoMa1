%run.m
g1 = @(N,x) exp_approx(x,N);
g2 = @(N,x) 1/exp_approx(-x,N);
g3 = @(N,x,k) exp_approx((abs(x)/k),N).^(sign(x)*k);

x = -5.5;
k = 11;
N = [0:5:50];

results = [];
e = exp(x);
for i=N
    err1 = (e - g1(i,x))/e;
    err2 = (e - g2(i,x))/e;
    err3 = (e - g3(i,x,k))/e;
    results = cat(1,results,[i err1 err2 err3]);
end

array2table(results, 'VariableNames',{'N','err1','err2', 'err3'})
csvwrite('daten.txt', results);
