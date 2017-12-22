clc 
clearvars 

num = xlsread("Extra Assignment\GegevensMeteo-opdracht.xls",'A4:B3656');
R = double(num(:,2) > 0);
p = sum(R) / 3652;

rAandB = zeros(3652,1);
for i = 1:3651
   rAandB(i) = R(i)*R(i+1);
end
pAandB = sum(rAandB)/3651;
pBgivenA = pAandB/p;

a = R(1:3651) - p;
b = R(2:3652) - p;
corr1 = sum(a.*b)/sqrt(sum(a.^2)*sum(b.^2));

corr = corrcoef(R(1:3651),R(2:3652));
corr2 = corrcoef(R(1:3650),R(3:3652));
corr3 = corrcoef(R(1:3649),R(4:3652));