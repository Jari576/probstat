clc
clearvars;

load('machine.mat')

meme = mean(performance);
medaian = median(performance);
mehd = mad(performance);

boxplot(performance);

