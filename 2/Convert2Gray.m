Im=imread('lena_std.tif'); %imread ile �zerinde �al���lmak istenilen
%foto�raf bir de�i�kene atanarak matlab workspace i�in tan�mlan�r
%ve ard�ndan imshow ile pencerede g�sterilebilir. 
%Workspace�te imgenin boyutu, ��z�n�rl��� gibi 
%bilgileri g�rebilirsiniz.
figure,imshow(Im);
title('Rekli Resim');
%0.2989 * R + 0.5870 * G + 0.1140 * B
GIm=uint8(zeros(size(Im,1),size(Im,2)));
for m=1:size(Im,1)
    for n=1:size(Im,2)
        GIm(m,n)=(Im(m,n,1)+Im(m,n,2)+Im(m,n,3))./3;
    end
end
figure
imshow(GIm)