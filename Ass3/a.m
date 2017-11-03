clc
clearvars;

load('machine.mat')

meen = mean(performance);
medaian = median(performance);
mehd = mad(performance);

boxplot(performance);