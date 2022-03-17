Im=imread('lena_std.tif');
figure,imshow(Im);
title('Rekli Resim');
%0.2989 * R + 0.5870 * G + 0.1140 * B
GIm=uint8(zeros(size(Im,1),size(Im,2)));
for m=1:size(Im,1)
    for n=1:size(Im,2)
        GIm(m,n)=0.2989*Im(m,n,1)+0.5870*Im(m,n,2)+0.1140*Im(m,n,3);
    end
end
figure
imshow(GIm)
title('Griton Resim');