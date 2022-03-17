a=0.30;
t = - 45;
%c1= 10;
%c2=20;
%b=40;
%T = maketform('affine', [2  0 0; 0 2 0; 0 0 1] );
%T = maketform('affine', [cosd(t) sind(t) 0; -sind(t) cosd(t) 0; 0 0 1] );
%T = maketform('affine', [1 0 0; a 1 0; 0 0 1] );
%T = maketform('affine', [1 0 0; 0 1 0; t b 1] );
T = maketform('affine', [9 0 0; 0 5 0; 0 0 1] );
A = imread('T.png');
h1 = figure; imshow(A); title('Original Image');
white = [255 127 0]';
R = makeresampler({'cubic','nearest'},'fill'); %bound
B = imtransform(A,T,R,'FillValues',white); 
h2 = figure; imshow(B);
title('Sheared Image');