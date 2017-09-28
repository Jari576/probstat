clc
clearvars

randArray = rand(2000,1);
targetArray = zeros(2000,1);
k = 0.8;
lambda = 4;
count = 0;
for x = 1: 2000
    w = weibull(randArray(x,1), k, lambda);
    if w > 1 && w < 4
        count = count + 1;
    end
    targetArray(x,1) = w;
end

histogram(targetArray);