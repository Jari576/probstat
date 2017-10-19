ProbStat_Ass2_ex6

pictureBW = zeros(size(pictureBlue));

mu1 = 0.6;
mu2 = 0.15;
sigma1 = 0.1;
sigma2 = 0.09;

for i = 1:size(pictureBlue, 1)
    for j = 1:size(pictureBlue, 2)
        pictureBW(i,j) = rule(pictureBlue(i,j), mu1, mu2, sigma1, sigma2);
    end
end

pictureBW = cat(3, pictureBW, pictureBW, pictureBW);
imagesc(pictureBW);