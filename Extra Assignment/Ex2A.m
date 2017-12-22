clc 
clearvars 

num = xlsread("GegevensMeteo-opdracht.xls",'A4:B3656');
R = num(:,2) > 0;
p = sum(R) / 3652;

rAandB = zeros(3652,1);
for i = 1:3651
   rAandB(i) = R(i)*R(i+1);
end
pAandB = sum(rAandB)/3651;
pAgivenB = pAandB/p

corr = corrcoef(R(1:3651),rAandB(2:3652));
corr2 = corrcoef(R(1:3650),rAandB(3:3652));
corr3 = corrcoef(R(1:3649),rAandB(4:3652));