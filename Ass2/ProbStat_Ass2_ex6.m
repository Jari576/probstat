picture = double(imread('players.jpeg'))/255;

pictureBlue = blueSegment(picture);

partPlay = pictureBlue(60:90,50:70);

partBack = pictureBlue(140:160,140:160);

imagesc(partPlay);

hist(partPlay(:));
%hist(partBack(:));
