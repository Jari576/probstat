function true = rule(Bp, mu1, sigma1, mu2, sigma2)

    norm1 = normpdf(Bp, mu1, sigma1); % get the chance that it's player
    norm2 = normpdf(Bp, mu2, sigma2); % get the chance that it's background
    percentage1 = 0.1; % about 10% of the picture is player
    percentage2 = 0.9; % about 90% of the picture is background
    
    perc1 = norm1*percentage1;
    perc2 = norm2*percentage2;
    true = perc1 > perc2;
    
end