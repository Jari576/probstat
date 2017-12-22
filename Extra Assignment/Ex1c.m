times = 10000;
lambda = 0.5;
limit = 16;
answers = zeros(times, 1);
Z001 = 2.576;

for row = 1:times
    curr = 1;
    total = 0;
    while (total < limit)
        R = poissrnd(lambda);
        
        total = total + R;
        answers(row, curr) = R;
        curr = curr + 1;
    end
end

subsetSum = sum(answers((1:times), (1:16)), 2);
eightPlus(subsetSum > 8) = 1;
eightPlus(subsetSum <= 8) = 0;

total = sum(eightPlus)/times;

confidenceDiff = Z001 * sqrt(total*(1-total)/times);
confplus = total + confidenceDiff;
confmin = total - confidenceDiff;
calcAmountForLow = total*(1-total)/(0.0015/2.576).^2;