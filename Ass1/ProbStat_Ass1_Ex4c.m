clc
clearvars

    answers1 = zeros(20000,1);
    answers2 = zeros(20000,1);
    answers3 = zeros(20000,1);
    for i = 1:20000
        [E,F,R] = ProbStat_Ass1_Ex4a(500);
        answers1(i) = E;
        answers2(i) = F;
        answers3(i) = R;
    end
    
    disp(sum(sum(answers1)));
    histogram(answers2);

