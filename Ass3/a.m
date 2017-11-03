clc
clearvars;

load('machine.mat')

meme = mean(performance);
medaian = median(performance);
mehd = mad(performance);

ksdensity(measurements(:,6));
