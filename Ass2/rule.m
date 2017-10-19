function true = rule(Bp, mu1, sigma1, mu2, sigma2)

    true = 1;
    norm1 = normpdf(Bp, mu1, sigma1); % get the chance that it's player
    norm2 = normpdf(Bp, mu2, sigma2); %get the chance that it's background
    percentage1 = 0.1; % about 10% of the picture is player
    percentage2 = 0.9; % about 90% of the picture is background
    
    if (percentage1*norm1 < percentage2*norm2)
        true = 0;
    end
    
end