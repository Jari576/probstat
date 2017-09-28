clc
clearvars

randArray = rand(2000,1);
rand2 = repmat(randArray, 1, 5);

F = [0 0.2 0.3 0.7 1];
F2 = repmat(F, 2000,1);

x = rand2 > F2;
answer = sum(x.').';

histogram(answer);