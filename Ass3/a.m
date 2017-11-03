clc
clearvars;

load('machine.mat')

meme = mean(performance);
medaian = median(performance);
mehd = mad(performance);

medians = bootstrp(10000, @median, performance);

hist(medians)
