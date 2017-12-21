size = 5;
times = 3;
prob = zeros(times, 1);
amount = 10^4;
Z001 = 2.576;

for p = 1:times 
    
    N = zeros(amount,1);
    for c = 1:amount
        rand = exprnd(0.5, [size, 1]);
        result = sum(rand);
        N(c) = result;
    end
    T(N <= 8) = 1;
    T(N > 8) = 0;
    
    prob(p) = sum(T)/amount;
end

total = sum(prob)/times;

confidenceDiff = Z001 * sqrt(total*(1-total)/amount);
confplus = total + confidenceDiff;
confmin = total - confidenceDiff;