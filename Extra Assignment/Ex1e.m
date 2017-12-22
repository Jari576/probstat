freq = Pcount(2, 10, 15, 10000);
disp(freq);

function freq = Pcount(mu,a,b,N)
lambda = 1/mu;
answers = zeros(N, 1);
results = zeros(N, 1);

for row = 1:N
    for curr = 1:(b+1) 
        R = poissrnd(lambda);
        
        answers(row, curr) = R;
    end
end
results = sum(answers((1:N), (a:b)), 2);

largest = results(1);
for row = 1:N 
    if results(row) > largest
        largest = results(row);
    end
end

freq = zeros(largest + 1, 1);
for row = 1:N
    freq(results(row) + 1) = freq(results(row) + 1) + 1;
end

end

