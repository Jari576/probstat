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

subsetSum = sum(answers((1:times), (10:15)), 2);

average = sum(subsetSum)/times;
total = average/limit;

confidenceDiff = Z001 * sqrt(total*(1-total)/times);
confplus = (total + confidenceDiff) * limit;
confmin = (total - confidenceDiff) * limit;
calcAmountForLow = total*(1-total)/(0.0015/2.576).^2;