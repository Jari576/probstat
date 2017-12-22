times = 5;
lambda = 0.5;
limit = 16;
answers = zeros(times, 1);
plotter = zeros(times, 1);
X = zeros(times, 1);

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

si = size(answers, 2);

for row = 1:times
    X(answers(row, (1:si)) <= 0) = -1;
    X(answers(row, (1:si)) > 0) = row;
    plotter(row, (1:si)) = X;
end

for row = 1:times
    plot(plotter(row, (1:si)), '*b');
    hold on;
    %plot([-1, si + 5],[row,row], 'k');
    %hold on;
end

xlim([0, si + 5]);
ylim([0, times+1]);
title('Poisson process with intensity lambda = 0.5');
ylabel('Number of the process');
xlabel('event time');
hold off;