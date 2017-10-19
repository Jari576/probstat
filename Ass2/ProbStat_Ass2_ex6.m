picture = double(imread('players.jpeg'))/255;

pictureBlue = blueSegment(picture);

partPlay = pictureBlue(50:90,40:70);

partBack = pictureBlue(1:176,115:135);

imagesc(partBack);

hist(partPlay(:));
%hist(partBack(:));