N = 10000;
freq = Ex1e(2, 10, 15, N);
subFreq = freq((1:9), (1:1));
numbers = zeros(9, 1);
probs = zeros(9, 1);
for row = 1:9
    numbers(row) = row-1;
    probs(row) = freq(row)/N;
end

T = table(numbers, subFreq, probs);
disp(T);