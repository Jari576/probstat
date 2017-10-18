picture = double(imread('players.jpeg'))/255;
zerosPic = picture(:,:,1)*0;


%Use red exclusively(?)
%imageRed = cat(3, picture(:,:,1), zerosPic, zerosPic);
%imagesc(imageRed);

%Use green exclusively(?)
imageGreen = cat(3, zerosPic, picture(:,:,2), zerosPic);
imagesc(imageGreen);

%Use blue exclusively(?)
% Blue got too monochrome and dark, without players going light
%imageBlue = cat(3, zerosPic, zerosPic, picture(:,:,3));
%imagesc(imageBlue);