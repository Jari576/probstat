clc 
clearvars 

num = xlsread("GegevensMeteo-opdracht.xls",'A4:B3656');
R = num(:,2) > 0;
p = sum(R) / 3652;

histogram(num(:,2))