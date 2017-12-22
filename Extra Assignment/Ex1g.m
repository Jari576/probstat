function wait = Ex1g(t0, mu, N)
lambda = 1/mu;
answers = zeros(N, 1);
wait = zeros(N, 1);

for row = 1:N
    for curr = 1:t0
        R = poissrnd(lambda);
    end
    R = 0;
    curr = curr + 1;
    diff = 0;
    while R <= 0
        R = poissrnd(lambda);
        curr = curr + 1;
        diff = diff + 1;
    end
    wait(row, 1) = diff;
end

end
