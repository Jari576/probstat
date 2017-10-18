picture = double(imread('players.jpeg'))/255;

picture2 = blueSegment(picture);
imagesc(picture2);