lena=imread('lena_std.tif');%resim okuma komutu
imshow(lena);%resmi görüntüleme fonksiyonu
grayLena=rgb2gray(lena);
figure;
imshow(grayLena);