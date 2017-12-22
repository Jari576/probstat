clc 
clearvars 

num = xlsread("Extra Assignment\GegevensMeteo-opdracht.xls",'A4:B3656');
R = num(:,2) > 0;
p = sum(R) / 3652;

rains = num(:,2);
%histogram(rains(rains > 0));
strd = std(rains);
size(rains(rains > 0));
rainsmean = sum(rains(rains > 0))/3652;
L = 1/rainsmean;
cdfplot(rains)
hold on
fplot(@(x) 1 - exp(-L*x), [0,400]);
legend('Empirical','Theoretical','Location','NW')