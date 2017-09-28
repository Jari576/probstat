clc
clearvars

B = [1;1;2;3;3;3;3;4;4;4];
k = ceil(10*rand(2000,1));
x = B(k);

A1ones = sum(sum(x == 1));
A2twos = sum(sum(x == 2));
A3threes = sum(sum(x == 3));
A4fours = sum(sum(x == 4));

