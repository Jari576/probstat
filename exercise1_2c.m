clc
clearvars

randArray = rand(2000,1);
rand2 = repmat(randArray, 1, 16);

F = [0 0.11 0.11 0.26 0.26 0.48 0.48 0.48 0.77 0.77 0.77 0.77 0.92 0.92 0.92 1];
F2 = repmat(F, 2000,1);

x = rand2 > F2;
answer = sum(x.');
answer2 = repmat(answer, 16, 1);

finalAnswer = zeros(1,1);
for x = 1 : 16
    finalAnswer(x,:) = sum(answer2(x,:) == x);
end

histogram(answer);