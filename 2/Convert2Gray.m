Im=imread('lena_std.tif'); %imread ile üzerinde çalýþýlmak istenilen
%fotoðraf bir deðiþkene atanarak matlab workspace için tanýmlanýr
%ve ardýndan imshow ile pencerede gösterilebilir. 
%Workspace’te imgenin boyutu, çözünürlüðü gibi 
%bilgileri görebilirsiniz.
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