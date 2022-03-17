clear
clc
img=imread('lena_gray.tif');
subplot(1,2,1)
imshow(img);
[m,n]=size(img);
T=130;
for i=1:m
    for j=1:n
        img(i,j)=((double(img(i,j))).^0.85);
%         if img(i,j)<T
%             img(i,j)=0;
%         else
%             img(i,j)=255;
%         end
    end
end
subplot(1,2,2)
imshow(img);