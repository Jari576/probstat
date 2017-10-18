red = cat(3, rand(10,20), zeros(10,20), zeros(10,20));
imagesc(red);

%blue = cat(3, zeros(10,20), zeros(10,20), rand(10,20));
%imagesc(blue);

%same = rand(10,20);
%yellow = cat(3, same, same, zeros(10,20));
%imagesc(yellow);

%{ 
there are 3 values for each tile. 
Red (1), Green (2), and blue (3).
When setting the first to random values and the rest to zeros, 
there are only shades of red.
When setting the second to random values and the rest to zeros,
there are only shades of green.
When setting the third to random values and the rest to zeros,
there are only shades of blue.
To create a full yellow picture, set all green and red values to 1.
To create a scale of yellow only, 
create the same random matrix for green and red.
%}