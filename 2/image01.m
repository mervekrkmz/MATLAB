lena=imread('lena_std.tif');%resim okuma komutu
imshow(lena);%resmi g�r�nt�leme fonksiyonu
grayLena=rgb2gray(lena);
figure;
imshow(grayLena);